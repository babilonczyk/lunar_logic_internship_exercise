# Introduction

This is a numpad that you will use to enter a PIN code:
1 2 3
4 5 6
7 8 9

At the very beginning you start with "5", afterwards you always start with a previous button and move your finger accordingly to the instructions.
The instructions consist of letters that tell you how to move your finger: U (move up), D (move down), L (move left), R (move right). Instructions consist of multiple lines.
At the end of every line (and only there) you actually need to press the button you're on. The pressed buttons are the PIN code.

## Installation

```ruby
bundle install
```

## How to run app?

```ruby
$> ruby phone_runner.rb 

$> <MOVEMENT_INSTRUCTIONS>

$> X 
```
X - to exit 

## How to run test?

```ruby
ruby phone_runner.rb <MOVEMENT_INSTRUCTIONS>
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install phone

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/phone.
