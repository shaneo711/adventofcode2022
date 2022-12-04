input = IO.readlines('./input.txt', chomp: true)

ALPHABET_ARRAY = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('')

def create_compartments(rucksack)
  compartments = []
  rucksack = rucksack.split('')
  compartment_one, compartment_two = rucksack.each_slice((rucksack.size / 2.0).round).to_a
  compartments.push(compartment_one, compartment_two)
end

def compare_compartments(compartments)
  compartments.first.map do |item|
    next unless compartments.last.include?(item)

    ALPHABET_ARRAY.each_with_index do |letter, value|
      return value + 1 if letter == item
    end
  end.compact.first
end

def item_values(input)
  input.map do |rucksack|
    compartments = create_compartments(rucksack)
    compare_compartments(compartments)
  end.sum
end

def compare_group(group)
  group = group.map do |rucksack|
    rucksack.split('')
  end
  group.first.map do |item|
    next unless group[1].include?(item) && group[2].include?(item)

    ALPHABET_ARRAY.each_with_index do |letter, value|
      return value + 1 if letter == item
    end
  end.compact.first
end

def badge_values(input)
  groups = input.each_slice(3).to_a
  groups.map do |group|
    compare_group(group)
  end.sum
end

p item_values(input)

p badge_values(input)