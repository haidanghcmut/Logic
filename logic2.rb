class Animal
    def initialize name
      @name = name
    end
  
    def run
      p "#{@name} is running"
    end
  end
  
tom = Animal.new("Tom")
def tom.tom_method
  p "Catch Jerry"
end

# hoặc

class << tom
  def tom_method
    p "Catch Jerry"
  end
end


module M1
    module ClassMethods
      def my_class_method
        puts 'Hello from class method!'
      end
    end
    
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    def my_instance_method
    end
  end
  
  class C1
    include M1
  end

  puts C1.class.my_instance_method