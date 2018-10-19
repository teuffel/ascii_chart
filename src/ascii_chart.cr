require "./ascii_chart/**"
module AsciiChart
  def self.plot(series : Array(Float64))
    return Line.new(series).plot
  end
end

#puts AsciiChart.plot((0...90).map do |i|
#      Math.cos(i * ((Math::PI * 4) / 90)).round(2) * 5
#    end)
