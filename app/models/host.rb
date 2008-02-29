class Host < Puppet::Rails::Host
  hobo_model


  def viewable_by?(viewer, field)
    !user.guest?
  end
end
