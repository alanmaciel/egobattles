#
# default values for arguments
#
def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach")
  "#{arg1}, #{arg2}, #{arg3}."
end

puts cool_dude
puts cool_dude("Bart")
puts cool_dude("Bart", "Elwood")
puts cool_dude("Bart", "Elwood", "Linus")

#
# default argument references a previous argument
#
def surround(word, pad_width=word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

puts surround("elephant")
puts surround("fox")
puts surround("fox", 10)

#
# variable-length arguments list
#  aka *splatting an argument
#
def varargs(arg1, *rest)
  puts ">>>>#{rest}"
  "arg1=#{arg1}. rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one", "two")
puts varargs "one", "two", "three"

# you can use a splat to specify arguments that are not used by the 
# method (but are used by the corresponding method in a superclass)
# Note in the following example we call super with no parameters.
# This is a special case that means:
#
# "invoke this method in the superclass, passing it allthe parameters
# that were given on the original method."
#
#class Child < Parent
#  def do_something(*not_used)
#    # our processing
#    super
#  end
#end


# after 1.9 you can put the splat argument anywhere in a method's  parameter 
# list.

# if you only cared about first and last you could write this method using:
# def split_apart(first, *, last)
#   #.
# end

def split_apart(first, *splat, last)
  puts "First: #{first.inspect}, splat: #{splat.inspect}, " +
       "last: #{last.inspect}"
end

split_apart(1,2)
split_apart(1,2,3)
split_apart(1,2,3,4)
