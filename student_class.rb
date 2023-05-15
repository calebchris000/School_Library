require './Person'

class Student < Person
  def initialize(age, _name, _parent_permission, classroom)
    super(age, name: 'Unknown', _parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
