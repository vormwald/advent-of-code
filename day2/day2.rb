class Run
  MY_ROCK = "X"
  MY_PAPER = "Y"
  MY_SCISSORS = "Z"
  YOUR_ROCK = "A"
  YOUR_PAPER = "B"
  YOUR_SCISSORS = "C"

  ROCK_SCORE = 1
  PAPER_SCORE = 2
  SCISSORS_SCORE = 3
  DRAW = 3
  WIN = 6
  LOSE = 0

  def initialize(input = nil)
    @input = input || load_file
  end

  def call
    @input.inject(0) do |sum, row|
      sum + score_line(*row.split)
    end.tap do |score|
      puts "score: #{score}"
    end
  end

  private

  def load_file
    IO.readlines("#{__dir__}/input.txt", chomp: true)
  end

  def score_line(theirs, mine)
    mine = strategy(theirs, mine)
    card_score(mine) + match_score(theirs, mine)
  end

  def strategy(theirs, mine)
    case mine
    when "X"
      # lose
      case theirs
      when YOUR_ROCK
        MY_SCISSORS
      when YOUR_PAPER
        MY_ROCK
      when YOUR_SCISSORS
        MY_PAPER
      end
    when "Y"
      # draw
      case theirs
      when YOUR_ROCK
        MY_ROCK
      when YOUR_PAPER
        MY_PAPER
      when YOUR_SCISSORS
        MY_SCISSORS
      end
    when "Z"
      # win
      case theirs
      when YOUR_ROCK
        MY_PAPER
      when YOUR_PAPER
        MY_SCISSORS
      when YOUR_SCISSORS
        MY_ROCK
      end
    end
  end

  def card_score(card)
    case card
    when MY_ROCK
      ROCK_SCORE
    when MY_PAPER
      PAPER_SCORE
    when MY_SCISSORS
      SCISSORS_SCORE
    end
  end

  def match_score(theirs, mine)
    if theirs == "A" && mine == "X" ||
        theirs == "B" && mine == "Y" ||
        theirs == "C" && mine == "Z"
      DRAW
    elsif theirs == "A" && mine == "Y"
      WIN
    elsif theirs == "B" && mine == "Z"
      WIN
    elsif theirs == "C" && mine == "X"
      WIN
    else
      LOSE
    end
  end
end
