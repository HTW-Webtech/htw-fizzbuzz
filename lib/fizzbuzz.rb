require_relative "fizzbuzz/version"

class Fizzbuzz
  def initialize(limit = 100)
    @range = Range.new *[0, limit.to_i].sort
  end

  def print
    @range.each do |i|
			dividable_by_two   = i % 2 == 0
			dividable_by_three = i % 3 == 0

			if dividable_by_two && dividable_by_three
				puts "fizzbuzz"
			elsif dividable_by_two
				puts "fizz"
			elsif dividable_by_three
				puts "buzz"
			else
				puts i
			end
		end
  end
end
