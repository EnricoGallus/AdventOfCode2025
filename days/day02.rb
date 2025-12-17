# frozen_string_literal: true

require_relative '../lib/aoc'

module Days
  # first day
  module Day02
    module_function

    DAY = 2
    SIZE = 100

    def part1(input)
      input.split(',').map(&:strip).reject(&:empty?).sum do |token|
        min, max = token.split('-', 2)
        (min.to_i..max.to_i).sum { |n| double_half?(n) ? n : 0 }
      end
    end

    def double_half?(number)
      s = number.to_s
      return false if s.length.odd?

      mid = s.length / 2
      s[0, mid] == s[mid, mid]
    end

    def part2(_input)
      # TODO: implement
    end
  end
end

if $PROGRAM_NAME == __FILE__
  input = AOC.input(Days::Day02::DAY, 1)
  puts "Part 1: #{Days::Day02.part1(input)}"
  input = AOC.input(Days::Day02::DAY, 2)
  puts "Part 2: #{Days::Day02.part2(input)}"
end