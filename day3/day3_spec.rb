require_relative "../spec_helper"
require_relative "./day3"

describe "day3" do
  subject { Run.new(parsed_input) }
  let(:parsed_input) { input.split("\n") }

  let(:input) do
    <<~END
      vJrwpWtwJgWrhcsFMMfFFhFp
      jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
      PmmdzqPrVvPwwTWBwg
      wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
      ttgJtRGJQctTZtZT
      CrZsJsPPZsGzwwsLwLmpwMDw
    END
  end

  describe "part one" do
    it "returns the right score" do
      expect(subject.call).to eq 157
    end
  end

  describe "part two" do
    it "returns the right score" do
      expect(subject.part2).to eq 70
    end
  end
end
