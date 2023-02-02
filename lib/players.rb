# frozen_string_literal: true

# Create players
class Players
  attr_reader :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end

end
