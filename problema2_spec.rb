require './problema2.rb'
require 'rspec/autorun'


describe VowelCounter do
    before do
        @a = VowelCounter.new
    end

    it "test with some types of vowels" do
        text_input = "AEIOU aeiou áëíõü ÀÉÍOU"
        expected_output = {"a"=> 4, "e"=> 4, "i"=> 4, "o"=> 4, "u"=> 4}
        expect(@a.count_vowels(text_input)).to eq(expected_output)
    end

    it "empty string test" do
        text_input = ""
        expected_output = {"a"=> 0, "e"=> 0, "i"=> 0, "o"=> 0, "u"=> 0}
        expect(@a.count_vowels(text_input)).to eq(expected_output)
    end
    
    it "consonant string text" do
        text_input = " bcd fgh jklmn pqrst vwxyz BCD FGH JKLMN PQRST VWXYZ"
        expected_output = {"a"=> 0, "e"=> 0, "i"=> 0, "o"=> 0, "u"=> 0} 
        expect(@a.count_vowels(text_input)).to eq(expected_output)
    end

    it "Special characters string text" do
        text_input = "!@#$%*$#)(*&¨%><:?/}"
        expected_output = {"a"=> 0, "e"=> 0, "i"=> 0, "o"=> 0, "u"=> 0}
        expect(@a.count_vowels(text_input)).to eq(expected_output)
    end
    


    it "integer parameter" do
        expect{@a.count_vowels(2)}.to raise_error(ArgumentError)
    end
    it "nil parameter" do
        expect{@a.count_vowels(nil)}.to raise_error(ArgumentError)
    end

end
