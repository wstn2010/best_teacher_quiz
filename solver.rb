class Solver
    
    def sum_up_to(n)
        n * (n + 1) / 2
    end
    
    def solve(v, n)
        v.inject(sum_up_to(n)) { |left, n| left - n }
    end
end
