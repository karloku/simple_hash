## SimpleHash
[![Gem Version](https://badge.fury.io/rb/simple_hash.svg)](https://badge.fury.io/rb/simple_hash)
[![Build Status](https://travis-ci.org/karloku/simple_hash.svg?branch=master)](https://travis-ci.org/karloku/simple_hash)

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

## Installation

Install the gem
```sh
gem install simple_hash
```
or require it in your Gemfile
```Ruby
gem 'simple_hash'
```

## Development

Test:
```
bundle exec rspec
```

## License

This gem is released under the [MIT License](MIT-LICENSE)
