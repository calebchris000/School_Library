require './nameable'
require './rental'
require_relative './book_class'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = rand(100..999)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    return false unless of_age? || parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    return false unless @age >= 18
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end
end
