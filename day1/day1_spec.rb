require_relative "../spec_helper"
require_relative "./day1"

describe "day1" do
  subject { Run.new(input) }
  let(:input) do
    <<~END
      1000
      2000
      3000

      4000

      5000
      6000

      7000
      8000
      9000

      10000
    END
  end

  it "it should return the top 3 largest sums" do
    expect(subject.call).to eq [24000, 11000, 10000]
  end
end
