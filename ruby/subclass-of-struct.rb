# You have a class with some attributes that you want to pass into the
# constructor, but you can't just use Struct because you need extra
# functionality

class SomeClass < Struct.new(:attr1, :attr2, :attr3)
  def concated
    [@attr1, @att2, @att3].join
  end
end

__END__
# Usage:
s = SomeClass.new('a','b','c')
s.att1 # a
s.concated # abc