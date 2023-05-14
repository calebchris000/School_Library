require "./Person.rb"

class Student < Person
    def initialize(age, name, parent_permission, classroom)
        super(age, name, parent_permission)
        @classroom = classroom
    end

    def play_hooky
        return '¯\(ツ)/¯'
    end
end

me = Student.new(22, "Caleb", true, "2B")
