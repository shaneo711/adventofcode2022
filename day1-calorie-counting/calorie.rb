array = []

File.open('./input.txt').each do |line|
  array.push(line.to_i)
end

calorie_totals = []
elf_total = 0

array.each do |item|
  if item != 0
    elf_total += item
  elsif item.zero?
    calorie_totals.push(elf_total)
    elf_total = 0
  end
end

sorted_totals = calorie_totals.sort.reverse

puts sorted_totals.first

puts sorted_totals.first(3).sum