# Rock = A, X, 1
# Paper = B, Y, 2
# Scissors = C, Z, 3
# Loss = 0, X
# Draw = 3, Y
# Win = 6, Z

input = IO.readlines('./input.txt', chomp: true)
part_one_outcomes = {
  'A X' => 4,
  'A Y' => 8,
  'A Z' => 3,
  'B X' => 1,
  'B Y' => 5,
  'B Z' => 9,
  'C X' => 7,
  'C Y' => 2,
  'C Z' => 6
}

part_two_outcomes = {
  'A X' => 3,
  'A Y' => 4,
  'A Z' => 8,
  'B X' => 1,
  'B Y' => 5,
  'B Z' => 9,
  'C X' => 2,
  'C Y' => 6,
  'C Z' => 7
}

def calculate_score(rounds, score_table)
  total_score = 0
  rounds.each do |round|
    total_score += score_table[round]
  end
  total_score
end

# Part one
p calculate_score(input, part_one_outcomes)

# Part two
p calculate_score(input, part_two_outcomes)