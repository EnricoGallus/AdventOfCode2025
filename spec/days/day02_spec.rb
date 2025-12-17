# frozen_string_literal: true

require_relative '../../days/day02'

RSpec.describe Days::Day02 do
  describe '.part1' do
    it 'solves the example' do
      expect(described_class.part1(AOC.input(Days::Day02::DAY, 1, example: true))).to eq(1_227_775_554)
    end
  end

  describe '.part2' do
    it 'solves the example' do
      expect(described_class.part2(AOC.input(Days::Day02::DAY, 2, example: true))).to eq(0)
    end
  end
end