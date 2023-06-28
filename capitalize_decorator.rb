require_relative 'base_decorator'

class CapitalizeDecorator < Base
  def correct_name
    @nameable.correct_name.capitalize
  end
end
