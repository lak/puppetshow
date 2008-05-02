module ResourcesHelper
  def resource_tags_column(record)
    display = record.resource_tags.count
    display ||= "0"
  end   

  def param_values_column(record)
    display = record.param_values.count
    display ||= "0"
  end 
end
