class SomeLib
  def expensive_method_a
    @expensive_method_a ||= some_method_call_here
  end
  
  def expensive_method_b
    @expensive_method_b ||= begin
      # Expensive calculation goes here. begin..end syntax useful when
      # multiple lines are needed for calculation
    end
  end
end
