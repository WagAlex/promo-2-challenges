# Encoding: utf-8

def louchebemize(sentence)
  #TODO: implement your louchebem translator

  word_array = sentence.split(/\b/)

  if word_array.each

  array_two.collect! {|x| "l" + x}

  else

  end
  array_two = word_array.delete_if {|word_two| word_two.length < 2 }

  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  first_array = word_array.collect {|word| word + suffixes[rand(0..6)]}




end

