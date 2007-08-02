class RestController < ActionController::Base
  before_filter :slurp_params

  # Extract the parameters from the XML or YAML HTTP POST.
  def slurp_params
    return unless request.post?
    slurp_method = "slurp_#{request.post_format}"
    if respond_to?(slurp_method)
      send(slurp_method)
    else
      render_error and return false
    end
  end 

  # Extract parameters from posted YAML
  def slurp_yaml
    begin
      @yaml = YAML.load(request.raw_post)
    rescue => detail
      logger.error("Error loading YAML: #{detail}")
    end
  end

  # Extract parameters from posted XML
  def slurp_xml
    xml = XmlSimple.xml_in(request.raw_post, 'ForceArray' => false)
    params.merge! xml
  end
end
