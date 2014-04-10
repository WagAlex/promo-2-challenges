def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |number, i|
  sum += number if i.odd?
end
sum
end

def even_numbers(array)
  new_array = array.select { |num|  num.even?  }

end

def short_words(array, max_length)
  array.reject { |words| words.length > max_length }
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find {|number| number < limit}
end

def add_bang(array)
  array.map! {|word| word + "!"}
end

def product(array)
  array.reduce(1, :*)
end

def sorted_pairs(array)
  array_with_couples = array.each_slice(2).to_a

  array_with_couples.each do |subarray|
    subarray.sort!


  end
end


