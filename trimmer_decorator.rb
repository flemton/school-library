require_relative 'base_decorator'

class TrimmerDecorator < Base
  def correct_name
      @nameable.correct_name[0, 10]
    end
end
