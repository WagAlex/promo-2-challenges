def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  word_one = a_string.gsub(/\W/, "").downcase.split(//).sort
  word_two = another_string.gsub(/\W/, "").downcase.split(//).sort

  word_one == word_two

end

anagrams?("yo!! o8", "!!8  o  yo")


hash1 = {
  "y" => 1,
  "o" => 2,
  "8" => 1
}

hash2 = {
  "8" => 1,
  "o" => 2,
  "y" => 1
}

def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method


end
