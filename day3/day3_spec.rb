require_relative "../spec_helper"
require_relative "./day3"

describe "day3" do
  subject { Run.new(parsed_input) }
  let(:parsed_input) { input.split("\n") }

  describe "part one" do
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

    it "returns the common letter" do
    end

    it "returns the right score" do
      expect(subject.call).to eq 157
    end
  end

  xdescribe "part two" do
    it "returns the right score" do
      expect(subject.call).to eq 12
    end

    context "when i win one round with a rock" do
      let(:input) do
        <<~END
          A X
        END
      end

      it "returns the right score" do
        expect(subject.call).to eq 3
      end
    end
  end
end
