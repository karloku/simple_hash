# frozen_string_literal: true
describe SimpleHash do
  describe '#h' do
    it 'builds hash' do
      a = 1
      b = 2
      expect(SimpleHash {[:a, :b]}).to eq(a: a, b: b)
    end
  end

  describe '::short_cut!' do
    it 'adds #h to Object' do
      SimpleHash.short_cut!
      a = 1
      b = 2
      expect(h{[:a, :b]}).to eq(a: a, b: b)
    end
  end
end
