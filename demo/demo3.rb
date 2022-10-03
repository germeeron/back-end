# 24 september 2022

# 4 pillars / principles of oop

# iv. polymorphism

class Duck
    def quack
        "Quack!"
    end

    def swim
        "Paddle paddle paddle..."
    end
end

class Goose
    def honk
        "Honk!"
    end

    def swim
        "Splash splash splash..."
    end
end

class DuckRecording
    def quack
        play
    end

    def play
        "Quack!"
    end
end

def make_it_quack(duck)
    duck.quack
end

# polymorphism - call the same method on different objects
make_it_quack(Duck.new)
make_it_quack(DuckRecording.new)

def make_it_swim(duck)
    duck.swim
end

# polymorphism - single interface on different objects
make_it_swim(Duck.new)
make_it_swim(Goose.new)


# statically-typed languages - java
# type variableName = value;
#   String name = "John";

# dynamically-typed languages - ruby
# name = "John"
# name = :John
# name = []
# type of variable can change


def make_it_quack(Duck duck)
    duck.quack
end

# statically-typed languages = type is based on what class the object belongs to
# dynamically-typed languages = type is based on what methods the object responds to

# duck-typing / dynamic typing => "if it quacks like a duck, then it is a duck"

# we're not concerned what class the object belongs to, as long as it responds to quack method

# will not work on statically-typed languages - DuckRecording because it's a different data type

make_it_quack(Duck.new)
make_it_quack(DuckRecording.new)        # error

def make_it_swim(Duck duck)
    duck.swim
end

# will not work on statically-typed languages - Goose because it's a different data type
make_it_swim(Duck.new)
make_it_swim(Goose.new)                 # error


# encapsulation - bundling of data and methods
# data and methods contained within the object
# benefit - easier to organize code
# as a developer, you can decide what the interface of the object will be, what's to be private or public
# when you initialize an object, encapsulation happens


# inheritance - hierarchies in the real world
# enables us to have DRY codes


# polymorphism - single interface to entities of different types
# call the same method on different objects
# via inheritance = method overriding
# via ducktyping = you don't inherit, implement method



# nice to know

# everything (almost) is an object
# every operation is a method call on some object

# object.method

5 + 6.0         # syntactic sugar
object.setter = new_value       # what happens under the hood
5.+(6.0)        # this is what really happens under the hood = method call

"ab" + "dul"    # syntactic sugar
"ab".+("dul")   # what happens under the hood = method call

2.5 + 3         # syntactic sugar
2.5.+(3)        # what happens under the hood

class Integer
    def +(other)
        #... how to add
    end
end

class Integer
    def +(other)
        #...
    end
end

class Float
    def +(other)
        #...
    end
end

class String
    def +(other)
        #...
    end
end

# per class, you have an implementation of plus method
# duck typing - doesn't matter, if it's integer, float or string, as long as it responds to plus


# even accessing an element

foo = ["a", "b", "c"]
foo[1]          # syntactic sugar
foo.[](1)       # what happens under the hood = [] is the method
foo.[] 1


# in javascript, not everything is an object


"a".length

# ecma-262 - official documentation of javascript

# == is a universal operation in javascript
# == is a method call in ruby

5 == 5
5.==(5)     # method call

class Integer

class Integer
    def ==(other)
        #...
    end
end

5.0.==(5.0)

class Float
    def ==(other)
        #...
    end
end