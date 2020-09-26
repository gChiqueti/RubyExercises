require './problema1.rb'
require 'rspec/autorun'


person_1 = [{ ruby: 1, db: 1, agile: 0, pattern: 0 }]
person_2 = [{ ruby: 5, db: 3, agile: 1, pattern: 2 }]
person_3 = [{ ruby: 5, db: 4, agile: 3, pattern: 3, server: 2 }]


describe SeniorTest do
    it "testa com valores esperados" do
        a = SeniorTest.new
        expect(a.rank_candidate(person_1)).to eq(2)
        expect(a.rank_candidate(person_2)).to eq(11)
        expect(a.rank_candidate(person_3)).to eq(17)
    end
end

