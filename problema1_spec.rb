require './problema1.rb'
require 'rspec/autorun'

describe SeniorTest do
    before do 
        @a = SeniorTest.new
    end

    it "test 1 with expected values" do
        person_1 = [{ ruby: 1, db: 1, agile: 0, pattern: 0 }]
        expect(@a.rank_candidate(person_1)).to eq('Júnior - Pontuação 2')
    end
    it "test 2 with expected values" do
        person_2 = [{ ruby: 5, db: 3, agile: 1, pattern: 2 }]
        expect(@a.rank_candidate(person_2)).to eq('Pleno - Pontuação 11')
    end
    it "test 3 with expected values" do
        person_3 = [{ ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }]
        expect(@a.rank_candidate(person_3)).to eq('Sênior - Pontuação 17')    
    end
    it "test 4 with expected values" do
        person_4 = [{ ruby: 2, db: 1, agile: 0, pattern: 1, server: 0 }]
        expect(@a.rank_candidate(person_4)).to eq('Júnior - Pontuação 4')    
    end

    it "test with unexpected values" do
        expect{@a.rank_candidate(2)}.to raise_error(ArgumentError) 
    end
    
end

