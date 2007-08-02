class CollectorController < RestController
  def create
#    f = File.open("/tmp/ps.debug", "w+") do |file|
#      YAML.dump(@yaml, file)
#    end
#    exit
    begin
      host = Host.find_or_create_by_name(@yaml[:facts]["fqdn"])
      host.ip = @yaml[:facts]["ipaddress"]
      @yaml[:facts].each_pair do |k,v|
        fn = FactName.find_or_create_by_name(k) 
        if v.is_a?(Array)
          v.each {|f| fn.fact_values.find_or_create_by_value(f)}
        end
        fv = fn.fact_values.find_or_create_by_value(v)
        host.fact_names << fn
      end
      
      @yaml[:resources].classes.each do |classname|
        puppet_class = PuppetClass.find_or_create_by_name(classname)
        host.puppet_classes << puppet_class
      end
     
      objects = []

      @yaml[:resources].delve {|o| objects << o if o.is_a?(Puppet::TransObject)}

      dev_hashes = []
      objects.each do |o|
        dev_hashes << o.instance_values
      end

      dev_hashes.each do |o|
        res = Resource.find_or_create_by_title_and_restype(o["name"], o["type"])
     
        source_file = SourceFile.find_or_create_by_path(o["file"])
        source_file.resources << res
        host.resources << res
        res.tags = o["tags"]
        res.line = o["line"]
#        o["tags"].each do |tag|
#          if @yaml[:resources].classes.include?(tag)
#            puppet_class = PuppetClass.find_or_create_by_name(tag)
#            puppet_class.resources << res
#          end
#        end

        o["params"].each_pair do |k,val|
          pn = res.param_names.find_or_create_by_name(k.to_s)
          if val.is_a?(Array)
            val.each do |v|
              pn.param_values.find_or_create_by_value(v)
            end
          elsif val.is_a?(Hash)
            val.each_pair do |k,v|
              pn = res.param_names.find_or_create_by_name(k.to_s)
              pn.param_values.find_or_create_by_value(v)
            end
          else
            pn.param_values.find_or_create_by_value(val)
          end
        end
        res.save
        host.save
      end
    rescue => e
      logger.error("Collector ERROR: #{e}")
    end
  end
end
