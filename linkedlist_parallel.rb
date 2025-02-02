require 'parallel'

# Define a node structure
class Node
  attr_accessor :data, :next

  def initialize( data )
    @data = data
    @next = nil
  end
end

# Function to append a node to the linked list
def append( head, data )
  new_node = Node.new( data )
  if head.nil?
    return new_node
  end
  temp = head
  temp = temp.next while temp.next
  temp.next = new_node
  head
end

# Function to convert linked list to an array
def list_to_array( head )
  arr = []
  temp = head
  while temp
    arr << temp.data
    temp = temp.next
  end
  arr
end

# Function to update the linked list from an array
def array_to_list( head, arr )
  temp = head
  arr.each do |val|
    temp.data = val
    temp = temp.next
  end
end

# Function to print the linked list
def print_list( head )
  temp = head
  while temp
    print "#{ temp.data } -> "
    temp = temp.next
  end
  puts "NULL"
end

# Create a linked list with values from 1 to N
N = 10
head = nil
(1..N).each { |i| head = append(head, i) }

puts "Original List:"
print_list( head )

# Convert linked list to an array
data_array = list_to_array( head )

# Process the list in parallel (e.g., multiply each value by 2)
processed_array = Parallel.map( data_array ) { |num| num * 2 }

# Update the linked list with processed data
array_to_list( head, processed_array )

puts "Processed List (Each value multiplied by 2):"
print_list( head )
