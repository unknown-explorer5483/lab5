# frozen_string_literal: true

# Calculation class for formula
class Calculation
  def self.calc(xpar, zpar)
    bottom_part = Math.tan(6 * zpar - 6 * xpar)
    raise "Can't divide by zero" if bottom_part.zero?

    (xpar**2 - 10) / bottom_part
  end
end
