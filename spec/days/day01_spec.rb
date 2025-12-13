# frozen_string_literal: true

require_relative '../../days/day01'

RSpec.describe Days::Day01 do
  describe '.part1' do
    it 'solves the example' do
      expect(described_class.part1(AOC.lines(Days::Day01::DAY, 1, example: true))).to eq(3)
    end
  end

  describe '.part2' do
    it 'solves the example' do
      expect(described_class.part2(AOC.lines(Days::Day01::DAY, 2, example: true))).to eq(6)
    end
  end
end