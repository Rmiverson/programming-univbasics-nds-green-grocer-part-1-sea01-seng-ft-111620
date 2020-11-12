require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.map{ |element|
    element.map { |key, value|
      if value == name
        return element
      end
    }
  }
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  re_array = Array.new
  
  cart.map { |element|
    puts element
    
    if !re_array[element]
      re_array.push(element)
      element.push(:count => 1)
    else
      
    end
  }
  puts re_array
  return re_array
end


  