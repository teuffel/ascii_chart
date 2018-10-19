require "./spec_helper"

describe AsciiChart do

  it "should display a chart" do
    puts AsciiChart.plot((0...90).map do |i| Math.cos(i * ((Math::PI * 4) / 90)).round(2) * 5 end)
  end
end
