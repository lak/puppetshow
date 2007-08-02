class PortalController < ApplicationController

  layout 'portal'

  def initiailize
  end

  def index
    @host_count = Host.count 
    @res_count = Resource.count
    @recent_hosts = Host.find(:all, 
                              :conditions => ["last_freshcheck >= ?", Time.now - 1.hour], 
                              :limit => 5 )
    @uncompiled_hosts = Host.find(:all,
                                  :conditions => ["last_freshcheck > last_compile"],
                                  :limit => 5 ) 
  end
  
end
