require 'rspec'

# write a program that for each number from 1 to 100, will print out the number, or will print out fizz if the number is a multiple of 3, or will print out buzz if the number is a multiple of 5, or will print out fizzbuzz if the number is a multiple of both 3 and 5.

class Fizzbuzz
  def output(num)
    return "fizzbuzz" if num % 15 == 0
    return "fizz" if num % 3 == 0
    return "buzz" if num % 5 == 0
    return num
  end

  def go
    (1..100).each do |num|
      puts output(num)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(2)).to eq(2)
    end
    it 'should return fizz if given 3' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(3)).to eq('fizz')
    end
    it 'should return buzz if given 5' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(5)).to eq('buzz')
    end
    it 'should return fizz if given 6' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(6)).to eq('fizz')
    end
    it 'should return fizz if given 9' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(9)).to eq('fizz')
    end
    it 'should return buzz if given 10' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(10)).to eq('buzz')
    end
    it 'should return fizzbuzz if given 15' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(15)).to eq('fizzbuzz')
    end
  end
end
