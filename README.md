# AsciiChart

Nice-looking lightweight console ASCII line charts ╭┈╯. Port of [kroitor/asciichart](https://github.com/kroitor/asciichart).

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  ascii_chart:
    github: teuffel/ascii_chart
```

## Usage

```crystal
require 'ascii_chart'

AsciiChart.plot((0...90).map { |i|
 Math.cos(i * ((Math::PI * 8) / 90)).round(2) * 10
})
```


```text
    5.00  ┼---╮                                     ╭------╮                                     ╭--
    4.00  ┤   ╰-╮                                 ╭-╯      ╰-╮                                 ╭-╯  
    3.00  ┤     ╰-╮                             ╭-╯          ╰-╮                             ╭-╯    
    2.00  ┤       ╰-╮                         ╭-╯              ╰-╮                         ╭-╯      
    1.00  ┤         ╰╮                       ╭╯                  ╰╮                       ╭╯        
    0.00  ┼          ╰╮                     ╭╯                    ╰╮                     ╭╯         
   -1.00  ┤           ╰-╮                 ╭-╯                      ╰-╮                 ╭-╯          
   -2.00  ┤             ╰╮               ╭╯                          ╰╮               ╭╯            
   -3.00  ┤              ╰-╮           ╭-╯                            ╰-╮           ╭-╯             
   -4.00  ┤                ╰--╮     ╭--╯                                ╰--╮     ╭--╯               
   -5.00  ┤                   ╰-----╯                                      ╰-----╯                  
```



```text
    9.00  ┤        ╭╮                   ╭╮                   ╭╮          ╭╮   ╭╮
    8.00  ┤  ╭╮    ||                   ||       ╭-╮  ╭╮     || ╭╮       ||   ||                ╭╮
    7.00  ┤  ||    ||                   ||   ╭╮╭╮| |  ||╭╮  ╭╯| ||  ╭╮   ||   ||                ||
    6.00  ┤  ||    ||                   ||╭╮ ||||| |  ||||  | | ||  ||╭╮ |╰-╮ ||   ╭╮           ||
    5.00  ┤╭╮||    ||                   |||| ||||| | ╭╯|||  | | || ╭╯||| |  | |╰╮  ||         ╭╮||
    4.00  ┤||||    ||                   |||╰╮||||| | | |||  | | || | ||| |  | | |  ||         ||||
    3.00  ┤||||    ||                   ||| |||||| | | |||  | | || | ||╰╮|  | | |  || ╭╮      ||||
    2.00  ┤||||    ||                 ╭╮||| |||||| | | ||| ╭╯ | || | ╰╯ ||  | | ╰╮ || ||      ||||
    1.00  ┼╯||╰-╮  ||      ╭╮         ||||| |||||| |╭╯ ||╰╮|  |╭╯| |    ||  | |  | || ||      ||||
    0.00  ┼ ╰╯  |  ||╭╮    || ╭-╮     |||╰╯ ||╰╯|| ||  || ╰╯  ╰╯ | |    ||  | |  | || ||  ╭╮  |||| ╭
   -1.00  ┤     |  ||||    || | |     |||   ||  || ||  ||        ╰╮|    ||  | |  | || ||  |╰╮ |||| |
   -2.00  ┤     |  ||||    || | |     |||   ╰╯  || ||  ||         ||    ||  | |  | ||╭╯|  | | |╰╯| |
   -3.00  ┤     |╭╮||||    || | |     |||       || ||  ||         ╰╯    ||  | |  | |╰╯ ╰-╮| | |  | |
   -4.00  ┤     |||||||╭╮  || | |     |||       || ||  ||               ╰╯  | |  | |     || | |  | |
   -5.00  ┤     ╰╯|||||||╭-╯|╭╯ |    ╭╯||       || ||  ╰╯                   | |  | |     || ╰-╯  | |
   -6.00  ┤       ||||╰╯╰╯  ||  |    | ||       ╰╯ ||                       ╰-╯  | |     ||      | |
   -7.00  ┤       ||||      ||  |╭-╮ | ╰╯          ╰╯                            | |     ||      | |
   -8.00  ┤       ╰╯╰╯      ╰╯  ╰╯ | |                                           |╭╯     ||      | |
   -9.00  ┤                        ╰-╯                                           ╰╯      ╰╯      ╰-╯
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/teuffel/ascii_chart. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The shard is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
