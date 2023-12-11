# frozen_string_literal: true

class EvenFinder
  def initialize(arry)
    @arry = arry
  end

  def find_even
    @arry.map { |obj| coerce(obj) }
         .compact
         .select(&:even?)
  end

  def coerce(obj)
    obj.to_i == 0 ? nil : obj.to_i
  rescue NoMethodError
    nil
  end
end
