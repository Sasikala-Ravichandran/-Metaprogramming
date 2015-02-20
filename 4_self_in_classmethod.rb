 #http://reference.jumpingmonkey.org/programming_languages/ruby/ruby-metaprogramming.html


 class C
    def self.foo
      self.bar  # self.bar is same as C.bar which is illegal b/c we call private method on C
    end
  
    def self.baz
      bar
    end

    def self.bar
      'bar'
    end
    private_class_method :bar
  end

  puts C.foo # => NoMethodError: private method `poo' called for C:Class
  puts C.baz # => 'bar'