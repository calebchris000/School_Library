require './person_class'
require './classroom'
class Student < Person
  attr_accessor :age, :name, :parent_permission

  def initialize(age, name, parent_permission, classroom)
    super(age, name: 'Unknown', parent_permission: true)
    @age = age
    @name = name
    @parent_permission = parent_permission
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

stud = Student.new(22, 'Cal', false, 'null')
puts stud.name
