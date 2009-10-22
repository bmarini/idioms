# This is a common idiom in the Rails codebase. It is a nice way of breaking
# up a large class. Group similar methods together, extract them out into a
# module, and include the module in the base class.

# This idiom can also be used as a way of providing add-on functionality to
# an existing class:
# SomeOtherLib.send(:include, SomeLib::Functionality)

# somelib/functionality.rb
module SomeLib
  module Functionality
    def self.included(base) #:nodoc:
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def class_method_a
        puts "Hello from class method"
      end
    end
    
    def instance_method_a
      puts "Hello from instance method"
    end
  end
end

# somelib/other_functionality.rb
module SomeLib
  module OtherFunctionality
    def self.included(base) #:nodoc:
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def class_method_b
        puts "Hello from class method"
      end
    end
    
    def instance_method_b
      puts "Hello from instance method"
    end
  end
end

# In somelib/base.rb
module SomeLib
  class Base
    include Functionality
    include OtherFunctionality
  end
end

sb = SomeLib::Base.new
sb.instance_method_a
SomeLib::Base.class_method_b