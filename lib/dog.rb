# Classes act as factory for objects, capable of instantiating new instances
# fido = Dog.new Dog.new #=> #<Dog:0x007fc52c2cc588>

# Dot Notation 
# We send objects messages asking them to perform an operation or task through a syntax "Dot Notation"
# fido.object_id #=> 70173135795280 

# Above we send the fido instance a message #object_id by separating the receiving object 
# fido and the message #object_id by a dot (.)
# When we send an object a message through dot notation, we are invoking the 
# corresponding method on the object 
# object_id method tells you the objects identifier in your computer's memory 

# In dot notation we call the object that received the method the receiver 
# We call the method the message

# Dot notation can be used both to call a method and to access an attribute of an object 
# Ruby does not require () to be appended to a method's name when you call it 
# the following are equivalent 
# fido.object_id
# fido.object_id() 

#----------------------------------------------------------------------------------
# Exploring Instance Methods 
# Calling #methods on an object returns and array of all methods 
#fido = Dog.new
#fido.methods

#=> [:psych_to_yaml, :to_yaml, :to_yaml_properties, :local_methods, :try, :nil?,
# :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup,
# :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze,
# :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods,
# :private_methods, :public_methods, :instance_variables,
# :instance_variable_get, :instance_variable_set, :instance_variable_defined?,
# :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send,
# :public_send, :respond_to?, :extend, :display, :method, :public_method,
# :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for,
# :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__] 

#---------------------------------------------------------------------------------
# Building Your Own Instance Methods 
# How do we add our own Methods to our classes 
# How do we teach our Dog a new trick?

# If we place the def method within the body of a class, that method 
# becomes a specific behavior of instances of that class, not a generic procedure 
# we can just call whenever we want 

# We call the methods defined within the objet's class Instance Methods 
# They belong to any instance of that class 

class Dog
    # Class Body 

    # Instance Method Definition 
    def bark 
        puts "Woof!"
    end

    def sit 
        puts "The Dog is sitting"
    end
end

fido = Dog.new 
fido.bark 
#=> Woof!
fido.sit
#=> The Dog is sitting
snoopy = Dog.new 
snoopy.bark 
#=> Woof!
snoopy.sit
#=> The Dog is sitting


