class Quiz
    
    attr_reader :n, :v, :sol
    
    def initialize(n)
        @n = n
        @v = (1..n).to_a.shuffle
        @sol = v.delete_at(rand(n))
    end
end
