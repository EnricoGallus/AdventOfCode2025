# frozen_string_literal: true

# library functions to remove boilerplate
module AOC
  module_function

  def input(day, part, example: false, chomp: true)
    path = File.join(__dir__, '..', 'inputs', "day#{day}_#{part}#{'_example' if example}.txt")
    data = File.read(path)
    chomp ? data.chomp : data
  end

  def lines(day, part, example: false, chomp: true)
    input(day, part, example: example, chomp: chomp).lines.map { |l| chomp ? l.chomp : l }
  end

  def ints(day, part, example: false)
    lines(day, part, example: example).map(&:to_i)
  end

  def grid(day, part, example: false)
    lines(day, part, example: example).map(&:chars)
  end

  def time(label = nil)
    t0 = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    result = yield
    t1 = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    ms = ((t1 - t0) * 1000.0)
    puts("#{"#{label}: " if label}#{format('%.2f', ms)}ms")
    result
  end
end