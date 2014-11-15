
require "./quiz.rb"
require "./solver.rb"

SZ = 10000
q = Quiz.new(SZ)

puts "Problem: given = %d, size of array = %d answer = %d" % [SZ, q.v.size, q.sol]

puts "Solved: #{Solver.new.solve(q.v, SZ)}"

