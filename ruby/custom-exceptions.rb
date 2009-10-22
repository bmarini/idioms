# It's common practice to define custom exception classes at the beginning of
# your lib. You can provide additional functionality within these classes,
# but in many cases it is enough just to define an empty class.

module SomeLib
  class ExceptionA < StandardError; end
  class ExceptionB < StandardError; end
  class ExceptionC < ExceptionB; end
  
  class Base
    # ...
    raise ExceptionA, "Exception A was raised", caller
  end
end