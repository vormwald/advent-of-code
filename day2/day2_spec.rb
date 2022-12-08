require_relative "../spec_helper"
require_relative "./day2"

describe "day2" do
  subject { Run.new(parsed_input) }
  let(:parsed_input) { input.split("\n") }
  let(:input) do
    <<~END
      A Y
      B X
      C Z
    END
  end

  describe "part one" do
    it "returns the right score" do
      expect(subject.call).to eq 15
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

  describe "part two" do
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
