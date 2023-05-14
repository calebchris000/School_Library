class Person
    attr_reader :id, :name, :age
    attr_writer :name, :age
    def initialize( age, name="Unknown", parent_permission=true)
        @id = nil
        @name = name
        @age = age
    end

    private def of_age?
        return false unless @age >= 18
    end
    def can_use_services? 
        return false unless of_age? || parent_permission
    end
end