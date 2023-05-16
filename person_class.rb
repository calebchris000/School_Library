require './nameable.rb'
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, _name = 'Unknown', _parent_permission = true)
    @id = nil
    @name = _name
    @age = age
    @parent_permission = _parent_permission
  end

  def can_use_services?
    return false unless of_age? || parent_permission
  end

  private def of_age?
    return false unless @age >= 18
  end
  def correct_name
    return @name
  end
end

