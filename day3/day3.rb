class Run
  def initialize(input = nil)
    @input = input || load_file
    @scoring = ("a".."z").to_a + ("A".."Z").to_a
  end

  def call
    puts part1
    puts part2
  end

  def part1
    @input.inject(0) do |sum, row|
      sum + score_line(row)
    end
  end

  def part2
    @input.inject(0) do |sum, row|
      sum + score_line(row)
    end
  end

  def load_file
    IO.readlines("#{__dir__}/input.txt", chomp: true)
  end

  def score_line(row)
    first, second = split_line(row)
    common_letter = first.chars & second.chars

    get_score(common_letter.first)
  end

  def split_line(row)
    length = row.length
    middle = length / 2

    [row[0, middle], row[middle, length]]
  end

  def get_score(letter)
    @scoring.index(letter) + 1
  end
end
