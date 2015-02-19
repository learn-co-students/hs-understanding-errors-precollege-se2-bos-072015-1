require_relative './spec_helper.rb'

describe 'Video' do
    it 'creates a new instance of Video with url and name' do
        keyboard_cat = Video.new("https://www.youtube.com/watch?v=J---aiyznGQ", "Keyboard Cat")
        expect(keyboard_cat).to be_an_instance_of(Video)
    end

    it 'rejects a new instance without arguments' do
        expect{ Video.new }.to raise_error(ArgumentError)
    end

    it 'adds a new tag to tags array' do
        keyboard_cat = Video.new("https://www.youtube.com/watch?v=J---aiyznGQ", "Keyboard Cat")
        keyboard_cat.add_to_tags("animals")
        expect(keyboard_cat.tags).to eq(["animals"])
    end


    it 'rejects a duplicate tag in tags array' do
        keyboard_cat = Video.new("https://www.youtube.com/watch?v=J---aiyznGQ", "Keyboard Cat")
        keyboard_cat.add_to_tags("animals")
        expect{keyboard_cat.add_to_tags("animals")}.to output("that tag already exists\n").to_stdout
    end

    it 'adds one to views when played' do
        keyboard_cat = Video.new("https://www.youtube.com/watch?v=J---aiyznGQ", "Keyboard Cat")
        5.times { keyboard_cat.play }
        expect(keyboard_cat.views).to eq(5)
    end

end