def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  tag("h1") { "Some Title" }

  end

def timer_for
  #TODO:  Return time taken to execute the given block
  go_execution = Time.now
  yield
  over_execution = Time.now

  over_execution - go_execution
end

def transform(element)
  #TODO:  Simply execute the given block on element
  yield(element)
end
