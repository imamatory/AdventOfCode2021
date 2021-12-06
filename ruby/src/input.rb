module AdventOfCode2021
  module Input
    module_function

    def input_file_path(filename)
      File.join(File.dirname(__FILE__), '../inputs', filename)
    end
  end
end
