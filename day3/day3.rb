class Day3
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
    i = 0
    letters = []

    loop do
      lines = take_three_lines_from(i)
      common = lines[0].chars & lines[1].chars & lines[2].chars
      letters.concat common

      i += 3
      break if i >= @input.length
    end

    letters.inject(0) do |sum, common_letter|
      sum + get_score(common_letter)
    end
  end

  def take_three_lines_from(start)
    @input[start, 3]
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
