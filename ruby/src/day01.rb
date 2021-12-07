require_relative 'input'

module AdventOfCode2021
  module Day01
    extend AdventOfCode2021::Input

    module_function

    def solution1
      measurements = File.read(input_file_path('./day01.input')).split.map(&:to_i)
      count_increases(measurements)
    end

    def solution2
      measurements = File.read(input_file_path('./day01.input')).split.map(&:to_i)

      measurement_windows_sum =
        (0..(measurements.size - 3))
          .map.with_index { |_, idx| measurements.values_at(idx, idx + 1, idx + 2).sum }

      count_increases(measurement_windows_sum)
    end

    def count_increases(measurements)
      previous_num = nil
      increases_count = 0

      measurements.each do |current_num|
        if previous_num.nil?
          previous_num = current_num
          next
        end
        increases_count += 1 if current_num > previous_num
        previous_num = current_num
      end

      increases_count
    end
  end
end

puts "Solution 1: " + AdventOfCode2021::Day01.solution1.to_s
puts "Solution 2: " + AdventOfCode2021::Day01.solution2.to_s
