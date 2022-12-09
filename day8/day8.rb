class Run
  def initialize(input = nil)
    @input = input || load_file
  end

  def call
    puts part1
    puts part2
  end

  def part1
    determine_trees
  end

  def part2
  end

  def load_file
    IO.readlines("#{__dir__}/input.txt", chomp: true)
  end
end
