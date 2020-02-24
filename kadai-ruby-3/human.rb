require './thinkable'
require './animal'
class Human < Animal
    include Thinkable
    
    attr_accessor :hobby
    
    def initialize(name,age,hobby)
        self.name=name
        self.age = age
        self.hobby = hobby
    end
end
      
      
 
