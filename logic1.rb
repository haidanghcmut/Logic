class Node
    attr_accessor :value, :next
  
    def initialize(value)
      @value = value
      @next = nil
    end
  end
  
  class LinkedList
    attr_accessor :head
  
    def initialize
      @head = nil
    end
  
    def append(value)
      new_node = Node.new(value)
  
      if @head.nil?
        @head = new_node
      else
        current_node = @head
        current_node = current_node.next while current_node.next
  
        current_node.next = new_node
      end
    end
  
    def prepend(value)
      new_node = Node.new(value)
  
      if @head.nil?
        @head = new_node
      else
        new_node.next = @head
        @head = new_node
      end
    end
  
    def display
      current_node = @head
      while current_node
        puts current_node.value
        current_node = current_node.next
      end
    end
  end

list = LinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.display