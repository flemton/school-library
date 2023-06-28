require_relative 'nameable'

class Base < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
