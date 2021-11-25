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
rspec spec/
```
