module HostsHelper

  def resources_column(record)
    display = record.resources.count
    display ||= "0"
  end   

  def fact_values_column(record)
    display = record.fact_values.count
    display ||= "0"
  end 
end
