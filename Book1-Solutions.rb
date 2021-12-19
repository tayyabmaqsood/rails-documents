def length_finder(input_array)
  input_array.collect{|i| i.length}
end

def find_frequency(sentence, word)
  sentence = sentence.upcase
  sentence = sentence.split
  word = word.upcase
  return sentence.count(word)
end

counts = find_frequency('Hello World', 'World')

def sort_string(string)
  p string.split(' ').sort { |x, y| x.length <=> y.length }.join(' ')
end
sort_string('Currently I am working on ruby')


def random_select(array, num)
  result = []
  num.times do
    result << array[rand(array.length)]
  end
  result
end
p random_select([1, 2, 4, 5, 6, 7, 8], 3)


def palindrome?(sentence)
  sentence = sentence.downcase.delete(' ')
  sentence == sentence.reverse
end
puts palindrome?('Race fast safe car')

def sum_of_cubes(a, b)
  # (a..b).inject(0) { |sum_num, x| sum_num += (x**3) }
  cub = 0
  (a..b).each do |index|
    cub += index**3
  end
  cub
end
puts sum_of_cubes(3, 5)

def array_of_fixnums?(array)
  array.all? { |x| x.is_a?(Integer) }
end
puts array_of_fixnums?([1, 3, 5, 6])
