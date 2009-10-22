# It's common to see arguments to methods passed in as a single options hash,
# which is nice because you don't have to remember ordering of args.
def some_method(options={})
  opts = {:some_default_key => 'can be overriden', :another_key => 123}.merge(options)
  
  puts opts.inspect
  # now opts is a hash of default options you've defined overriden by options
  # passed in.
end

some_method
some_method(:some_default_key => 'with new value')
some_method(:another_key => 456)
some_method(:another_key => 456, :some_default_key => "foo")