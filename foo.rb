file = ARGV[0] || "input.txt"
lines = File.readlines(file).map(&:strip)

result = []
lines.map { |l|
  arr = l.split(" ").map(&:to_i).sort
  new_arr = arr.first.upto(arr.last).to_a
  result = (result - new_arr) | (new_arr - result)
}
p result.count
