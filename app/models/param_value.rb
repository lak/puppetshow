class ParamValue < ActiveRecord::Base
  belongs_to :param_name
  belongs_to :resource

  def to_label
    self.param_name.name
  end

end
