class HostsController < ApplicationController

  active_scaffold :host do |config|
    config.columns.exclude :fact_names
    #config.actions.exclude :nested 
    #config.columns[:fact_values].set_link('nested', :parameters => {:associations => :fact_values}) 
    config.columns[:fact_values].label = "Facts"
    config.columns[:fact_values].includes = nil
    config.columns[:resources].includes = nil
  end

  #def show
  #  unless @host = Host.find(:first, :conditions => [ 'name LIKE ?', "#{params[:name]}.%" ])
  #    @host = Host.find(params[:id])
  #  end
  #end

  # POST /hosts
  # POST /hosts.xml
  #def create
  #  attrs = {}
  #  params.each_pair do |k,v|
  #    k.chomp
  #    case k 
  #      when "name" 
  #        attrs.store(k,v)
  #      when "ip"
  #        attrs.store(k,v)
  #    end
  #  end
  #end

end
