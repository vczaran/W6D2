class AttrAccessorObject
  def self.my_attr_accessor(*names)
    self.instance_variable_get(name)
    self.instance_variable_set(name)
  end
end
