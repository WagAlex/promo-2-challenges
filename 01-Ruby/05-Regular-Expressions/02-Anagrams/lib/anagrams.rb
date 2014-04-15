def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  word_one = a_string.gsub(/\W/, "").downcase.split(//).sort
  word_two = another_string.gsub(/\W/, "").downcase.split(//).sort

  word_one == word_two

end

anagrams?("yo!! 8", "!!8    yo")



def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
end
