require './person_class'
require './classroom'
class Student < Person
  def initialize(age, _name, _parent_permission, classroom)
    super(age, _name = 'Unknown', _parent_permission = true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
