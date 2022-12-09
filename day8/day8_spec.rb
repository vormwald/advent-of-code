require_relative "../spec_helper"
require_relative "./day8"

describe "day8" do
  subject { Run.new(parsed_input) }
  let(:parsed_input) { input.split("\n") }

  describe "part one" do
    let(:input) do
      <<~END
        30373
        25512
        65332
        33549
        35390
      END
    end

    describe "#part1" do
      it "counts the visibile trees" do
      end
    end

    xit "returns the right score" do
      expect(subject.part1).to eq 21
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
