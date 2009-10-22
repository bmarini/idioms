# Use autoload instead of require and ruby loads when/if it needs the constant
module SomeLib
  autoload :Foo,    'some_lib/foo'
  autoload :Bar,    'some_lib/bar'
  autoload :FooBar, 'some_lib/foobar'
end
