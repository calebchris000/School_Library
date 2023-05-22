require './person_class'

class Teacher < Person
  attr_accessor :age, :name, :specialization

  def initialize(age, name, _parent_permission, specialization)
    super(age, name: 'Unknown', parent_permission: true)
    @age = age
    @name = name
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
