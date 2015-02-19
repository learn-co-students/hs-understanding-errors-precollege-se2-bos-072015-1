require_relative './spec_helper.rb'

describe '#happy_and_i_know_it' do
	it 'returns a string about hand clapping' do
		expect(happy_and_i_know_it).to eq("clapping my hands")
	end
end

describe '#boom_n_times' do
	it 'prints "boom" the number of times given as an argument' do
		expect{boom_n_times(2)}.to output("boom!\nboom!\n").to_stdout
	end
end

describe '#upcase_odd_numbered_words' do
	it 'upcases odd words and leaves even words alone' do
		expect(upcase_odd_numbered_words("It was the best of times, it was the worst of times")).to eq("It WAS THE best of times, it WAS THE WORST of TIMES")
	end
end


describe '#sum_array' do
	it 'returns the sum of an array given as an argument' do
		expect(sum_array([1,2,3,4,5])).to eq(15)
	end
end
