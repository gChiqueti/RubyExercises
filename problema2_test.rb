require './problema2.rb'
require 'rspec/autorun'

# vowel string test
test_1_param = "AEIOU aeiou áëíõü ÀÉÍOU"
test_1_result = {"a"=> 4, "e"=> 4, "i"=> 4, "o"=> 4, "u"=> 4}

# empty string test
test_2_param = ""
test_2_result = {"a"=> 0, "e"=> 0, "i"=> 0, "o"=> 0, "u"=> 0}

# Consonant string text
test_3_param = " bcd fgh jklmn pqrst vwxyz BCD FGH JKLMN PQRST VWXYZ"
test_3_result = {"a"=> 0, "e"=> 0, "i"=> 0, "o"=> 0, "u"=> 0}

# Special characters string text
test_4_param = "!@#$%*$#)(*&¨%><:?/}"
test_4_result = {"a"=> 0, "e"=> 0, "i"=> 0, "o"=> 0, "u"=> 0}




describe VowelCounter do
    before do
        @a = VowelCounter.new
    end

    it "test with vowels string" do
        expect(@a.count_vowels(test_1_param)).to eq(test_1_result)
    end
    it "empty string test" do
        expect(@a.count_vowels(test_2_param)).to eq(test_2_result)
    end
    it "consonant string text" do
        expect(@a.count_vowels(test_3_param)).to eq(test_3_result)
    end
    it "Special characters string text" do
        expect(@a.count_vowels(test_4_param)).to eq(test_4_result)
    end
    
    it "integer parameter" do
        expect{@a.count_vowels(2)}.to raise_error(ArgumentError)
    end
    it "nil parameter" do
        expect{@a.count_vowels(nil)}.to raise_error(ArgumentError)
    end

end
