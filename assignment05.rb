class Person
    attr_accessor :name, :age, :gender
    def method_missing( m , *args , &b)
      words = m.to_s.split( "_" )
      # puts "words  #{words }"
      words.shift
      # puts "words2  #{words }"
      instance_variable_set "@#{words.first.downcase}", args[0]
      # puts instance_variable_set "@#{words.first.downcase}", args[0]
    end
end

p =Person.new
p.name = "f"
p.set_age 23
p.set_Gender "M"
p p.name
p p.age
p p.gender