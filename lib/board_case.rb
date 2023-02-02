# frozen_string_literal: true

# Create a case, will contain the X or O
class BoardCase
  attr_accessor :position, :content

  def initialize(case_position, case_content)
    @position = case_position
    @content = case_content
  end
end
