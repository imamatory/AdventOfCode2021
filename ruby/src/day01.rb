require_relative 'input'

module AdventOfCode2021
  module Day01
    extend AdventOfCode2021::Input

    module_function

    def solution
      previous_num = nil
      increases_count = 0

      File.foreach(input_file_path('./day01.input')) do |line|
        current_num = line.to_i

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

puts AdventOfCode2021::Day01.solution
