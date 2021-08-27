class Person 
    def talk 
        puts "Hello World!"
    end

    def walk 
       puts "The Person is walking"
    end
end

Joe = Person.new 
Joe.talk 
#=> Hello World!
Joe.walk 
#=> The Person is walking