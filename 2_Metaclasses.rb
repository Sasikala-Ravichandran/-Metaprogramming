#Metaclass chain of class object

class A
	class << self
    class << self
  	class << self
      def self.hi
         puts "hi"
     end
 end
  	end
end
end
  	 

A.singleton_class.singleton_class.singleton_class.hi

#metaclass chain of a instance of class
a= A.new
  class << a
  	class << self
    def self.speak
    	puts "speak"
    end
     end
end

a.singleton_class.singleton_class.speak
