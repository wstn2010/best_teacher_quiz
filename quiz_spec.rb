require_relative "quiz.rb"
require_relative "solver.rb"

describe Quiz, "create problem" do
    
    it "returns empty when given 0" do
        q = Quiz.new(0)
        expect(q.v).to be_empty
        expect(q.sol).to eq nil
    end
    
    it "returns empty when given 1" do
        q = Quiz.new(1)
        expect(q.v).to be_empty
        expect(q.sol).to eq nil
    end

    it "returns 9999-size array when given 10000" do
        q = Quiz.new(10000)
        expect(q.v.size).to eq 9999
    end
end

describe Solver do

    let (:s) { s = Solver.new }

    it "return 0 when summing up to 0 " do
        expect(s.sum_up_to(0)).to eq 0
    end

    it "return 55 when summing up to 10 " do
        expect(s.sum_up_to(10)).to eq 55
    end
    
    it "find a solution: a size of problem == 10" do
        q = Quiz.new(10)
        
        expect(s.solve(q.v, 10)).to eq q.sol
    end

    it "return 1 for empty array" do
        q = Quiz.new(1)
    
        expect(s.solve(q.v, 1)).to eq 1
    end

    it "find a solution: a size of problem == 10000" do
        q = Quiz.new(10000)
        
        expect(s.solve(q.v, 10000)).to eq q.sol
    end
end
