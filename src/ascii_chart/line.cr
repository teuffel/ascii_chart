module AsciiChart
  class Line

    def initialize(series : Array(Float64))
      @series = series
    end

    def plot
      max = @series.max
      min = @series.min
      interval = (max - min).abs
      options = {
        offset: 3,
        format: "%8.2f ",
        height: interval
      }

      options[:height]
      radio = options[:height].to_f / interval
      offset = options[:offset]

      intmax = (max * radio).ceil.to_i
      intmin = (min * radio).floor.to_i
      rows = (intmax - intmin).abs
      width = @series.size + offset

      result = (0..rows).map { [" "] * width }

      (intmin..intmax).each do |y|
        label = options[:format] % (max - (((y - intmin) * interval).to_f / rows))
        result[y - intmin][[offset - label.size, 0].max] = label
        result[y - intmin][offset - 1] = y == 0 ? "┼" : "┤"
      end

      highest = (@series.first * radio - intmin).to_i
      result[rows - highest][offset - 1] = "┼"

      (0...@series.size - 1).each do |x|
        _curr = (@series[x + 0] * radio).round.to_i - intmin
        _next = (@series[x + 1] * radio).round.to_i - intmin

        if _curr == _next
          result[rows - _curr][x + offset] = "-"
        else
          result[rows - _curr][x + offset] = _curr > _next ? "╮" : "╯"
          result[rows - _next][x + offset] = _curr > _next ? "╰" : "╭"

          ([_curr, _next].min + 1...[_curr, _next].max).each do |y|
            result[rows - y][x + offset] = "|"
          end
        end
      end

      return result.map{|entry| entry.join("") }.join("\n")
    end
  end
end
