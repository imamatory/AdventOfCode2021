require_relative 'input'

module AdventOfCode2021
  module Day02
    extend AdventOfCode2021::Input

    module_function

    def solution
      horizontal_position = 0
      depth_v1 = 0
      depth_v2 = 0
      aim = 0

      File.foreach(input_file_path('./day02.input')) do |line|
        direction, magnitude = line.split(' ')
        magnitude = magnitude.to_i

        case direction
        when 'up'
          depth_v1 -= magnitude
          aim -= magnitude
        when 'down'
          depth_v1 += magnitude
          aim += magnitude
        when 'forward'
          horizontal_position += magnitude
          depth_v2 += aim * magnitude
        end
      end

      <<~OUTPUT
      Result for part one: #{horizontal_position * depth_v1}
      Result for part two: #{horizontal_position * depth_v2}
      OUTPUT
    end
  end
end

puts AdventOfCode2021::Day02.solution
