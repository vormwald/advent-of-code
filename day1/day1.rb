require "csv"

class Run
  def initialize(input = nil)
    @input = input || load_csv_file
  end

  def call
    parse_csv(@input).tap do |top_3|
      output(top_3)
    end
  end

  private

  def output(top_3)
    puts "top: #{top_3[0]}"
    puts "sum: #{top_3.inject(:+)}"
  end

  def load_csv_file
    File.open("#{__dir__}/input.txt")
  end

  def parse_csv(input)
    iterator = CSV.parse(input)
    a = {}
    i = 1
    iterator.each do |row|
      if row.empty?
        i += 1
      else
        current = a[i] || 0
        a[i] = current + row.first.to_i
      end
    end

    a.values.max(3)
  end
end
