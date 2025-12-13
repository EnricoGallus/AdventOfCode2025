# frozen_string_literal: true

require_relative '../lib/aoc'

module Days
  # first day
  module Day01
    module_function

    DAY = 1
    SIZE = 100

    def part1(input)
      counter = 0
      pos = 50
      input.each do |line|
        direction = line.getbyte(0) == 82 ? :R : :L
        ticks = line.byteslice(1..).to_i

        delta = (direction == :R ? ticks : -ticks)
        pos = (pos + delta) % SIZE
        counter += 1 if pos.zero?
      end

      counter
    end

    def part2(input)
      counter = 0
      pos = 50
      input.each do |line|
        direction = line.getbyte(0) == 82 ? :R : :L
        ticks = line.byteslice(1..).to_i

        if direction == :R
          counter += (pos + ticks) / SIZE
          pos = (pos + ticks) % SIZE
        else # :L
          counter -= (pos - ticks) / SIZE
          pos = (pos - ticks) % SIZE
        end
      end

      counter
    end
  end
end

if $PROGRAM_NAME == __FILE__
  input = AOC.lines(Days::Day01::DAY, 1)
  puts "Part 1: #{Days::Day01.part1(input)}"
  input = AOC.lines(Days::Day01::DAY, 2)
  puts "Part 2: #{Days::Day01.part2(input)}"
end