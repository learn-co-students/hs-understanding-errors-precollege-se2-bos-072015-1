def happy_and_i_know_it
	"clapping my hands"
end

def boom_n_times(n)
	n.times do
		puts "boom!"
	end
end

def upcase_odd_numbered_words(sentence)
	updated_sentence_array = sentence.split.collect do |word|
		if word.length % 2 == 0
			word
		else
			word.upcase
		end
	end
	updated_sentence_array.join(" ")
end

def sum_array(arr)
	total = 0
	arr.each do |number|
		total += number
	end
	total
end