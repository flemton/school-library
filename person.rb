require_relative 'nameable'
require_relative 'capitalize_decorator'
class Person < Nameable
  attr_accessor :id, :name, :age, :books, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    @rentals.push(Rental.new(date, self, book))
  end

  private

  def of_age?
    @age >= 18
  end
end
