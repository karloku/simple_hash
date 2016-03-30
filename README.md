## SimpleHash

Brings ES6 object initializer sugar to Ruby.

## Usage

suppose you have these variables
```Ruby
year = 2016
month = 3
day = 30
hour = 18
minute = 50
second = 23
```

Build a hash requires much redundancy:
```Ruby
{year: year, month: month, day: day, hour: hour, minute: minute, second: second}
```

With SimpleHash, build like this:
```Ruby
SimpleHash{[:year, :month, :day, :hour, :minute, :second]}
```

Further, you can load the short cut by calling ```SimpleHash.short_cut!```, this method would add a method ```#h``` to Object.
Then you can build like this:
```Ruby
h{[:year, :month, :day, :hour, :minute, :second]}
```

## Development

Test:
```
bundle exec rspec
```

## License

This gem is released under the [MIT License](MIT-LICENSE)
