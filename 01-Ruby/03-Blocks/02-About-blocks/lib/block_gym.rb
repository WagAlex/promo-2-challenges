def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  tag("h1") { "Les tomates sont rouges" }

end

def timer_for
  #TODO:  Return time taken to execute the given block
  timer_for do
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

def transform(element)
  #TODO:  Simply execute the given block on element
end
