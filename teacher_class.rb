require './Person'

class Teacher < Person
  def initialize(age, name, _parent_permission, specialization)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
