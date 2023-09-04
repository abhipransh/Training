# Two sisters are eating chocolate, whose pieces are represented as subarrays of [l x w].
# Write a function that returns true if the total area of chocolate is the same for each sister.
# To illustrate:
# test_fairness([[4, 3], [2, 4], [1, 2]],
# [[6, 2], [4, 2], [1, 1], [1, 1]])
# ➞ true
# // Agatha's pieces: [4, 3], [2, 4], [1, 2]
# // Bertha's pieces: [6, 2], [4, 2], [1, 1], [1, 1]
# // Total area of Agatha's chocolate
# // 4x3 + 2x4 + 1x2 = 12 + 8 + 2 = 22
# // Total area of Bertha's chocolate is:
# // 6x2 + 4x2 + 1x1 + 1x1 = 12 + 8 + 1 + 1 = 22

def test_fairness(agatha, bertha)
    asum = 0
    agatha.each { |e| asum += e[0] * e[1]} # Convert input to integer
    bsum = 0
    bertha.each { |e| bsum += e[0] * e[1] } # Convert input to integer
    return asum == bsum
end

puts "Enter agatha's array:"
agatha = []
loop do
    input = gets.chomp
    break if input.empty?  # Break the loop on empty input
    values = input.split.map(&:to_i)
    agatha << values
end

puts "Enter bertha's array:"
bertha = []
loop do
    input = gets.chomp
    break if input.empty?  # Break the loop on empty input
    values = input.split.map(&:to_i)
    bertha << values
end

puts "#{test_fairness(agatha, bertha)}"