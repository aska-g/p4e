# ARRAYS

my_array = [1, 2, 3, 4]

# CREATE AN ARRAY
  new_empty_array = []

  new_array = [1, 2, 3, 4]
  # indexes =  0  1  2  3

# ACCESS ARRAY

  my_array = [1, 2, 3, 4]
  # index  =  0  1  2  3

  # 1. read first element
    my_array.first # result: 1

  # 2. read last element
    my_array.last # result: 4

  # 3. read element with index 'x'
    my_array[1] # result: 2
    my_array[-1] # result: 4
    # index '-1' is the last element 
    # (you don't always know the lenght)

# ADD TO ARRAY

  my_array = [1, 2, 3, 4]
  # index  =  0  1  2  3

  # 1. add to end of array
    # my_array.push(element)
    my_array.push(5) # result: [1, 2, 3, 4, 5]

  # 2. add to beginning of array
    # my_array.unshift(element)
    my_array.unshift(0) # result: [0, 1, 2, 3, 4, 5]

  # 3. add to chosen index
    # my_array.insert(index, element)
    my_array.insert(2, 4) # result: [0, 1, 4, 2, 3, 4, 5]
                          # index    0  1  2  3  4  5, 6

# DELETE FROM ARRAY

  my_array = [1, 2, 3, 4]
  # index  =  0  1  2  3

  # 1. delete from the end of array
    # my_array.pop
    my_array.pop
    # before: [1, 2, 3, 4]
    # result: [1, 2, 3]

  # 2. delete from the beginning of array
    # my_array.shift
    my_array.shift
    # before: [1, 2, 3]
    # result: [2, 3]

  # 3. delete chosen index
    # my_array.delete_at(index)
    my_array.delete_at(1)
    # before: [2, 3]
    # index    0  1
    # result: [2]

  # 4. delete chosen value
    # my_array.delete(value)
    my_array.delete(2)
    # before: [2]
    # result: []

  # 5. delete chosen value 2
    new_array = [1, 2, 3, 1, 5]
    my_array.delete(1)
    # before: [1, 2, 3, 1, 5]
    # result: [2, 3, 5]

# MODIFY ARRAY

  my_array = [1, 2, 3, 4]
  # index  =  0  1  2  3

  # 1. modify element in index 'x'
    # my_array[index] = new_value
    my_array[3] = 6
    # before: [1, 2, 3, 4]
    # result: [1, 2, 3, 6]


# HASHES

  hash = {
    key1 => value1,
    key2 => value2
  }

# CREATE A HASH

  an_empty_hash = Hash.new
  # result: {}
  another_empty_hash = {}
  # result: {}

  new_hash = {
    'name' => 'Maria',
    'age' => 24
  }

# ACCESS KEY-VALUE PAIR IN HASH

  menu = {
    'pizza' => 15,
    'beer' => 1,
    'ice cream' => 8
  }

  # 1. access value using key
    # my_hash[key]
    menu['pizza']
    # result: 15


# ADD NEW KEY-VALUE PAIR TO HASH

  menu = {
    'pizza' => 15,
    'beer' => 1,
    'ice cream' => 8
  }

  # 1. add key-value using key-value
    # my_hash[new_key] = new_value
    menu['pasta'] = 18
    # before: menu = { 'pizza' => 15, 'beer' => 1, 'ice cream' => 150 }
    # result: menu = { 'pizza' => 15, 'beer' => 1, 'ice cream' => 150, 'pasta' => 18 }

# DELETE KEY-VALUE PAIR IN HASH

  menu = {
    'pizza' => 15,
    'beer' => 1,
    'ice cream' => 8
  }

  # 1. delete key-value using key
    # my_hash.delete(key)
    menu.delete('beer')
    # before: manu = { 'pizza' => 15, 'beer' => 1, 'ice cream' => 8 }
    # result: manu = { 'pizza' => 15, 'ice cream' => 8 }

# MODIFY VALUE IN HASH

  menu = {
    'pizza' => 15,
    'beer' => 1,
    'ice cream' => 8
  }

  # 1. modify value using key
    # my_hash[existing_key] = new_value
    menu['pizza'] = 17
    # before: manu = { 'pizza' => 15, 'beer' => 1, 'ice cream' => 8 }
    # result: manu = { 'pizza' => 17, 'beer' => 1, 'ice cream' => 8 }

# ITERATING

#ARRAY
  
  names = ['don', 'john', 'sarah']

  # 1. iterate through names
    names.each do |name|
      puts name.capitalize
    end
  
  # 2. same but in one line
    names.each { |name| puts name.capitalize }
  
#ARRAY OF ARRAY == MULTIDIMENSIONAL ARRAY

  my_array = [['Joe', 'Bob', 'Nick'], ['Sue', 'Megan', 'Sarah']]

  # 1. iterate through my array
    my_array.each do |array|
      puts array
    end
    # result: ['Joe', 'Bob', 'Nick'] ['Sue', 'Megan', 'Sarah']
  
  # 2. iterate through my array and sub_array
    my_array.each do |sub_array|
      sub_array.each do |name|
        puts name
      end
    end
    # result: 'Joe' 'Bob' 'Nick' 'Sue' 'Megan' 'Sarah'

#HASH
    
  menu = {
    'pizza' => 15,
    'beer' => 2,
    'ice cream' => 8
  }

  # 1. iterate through hash
    # hash.each { |key, value| do something }
    menu.each do |dish, price|
      puts "#{dish} costs #{price} euros"
    end
    # result: 'pizza: 15' 'beer: 2' 'ice cream: 8'

