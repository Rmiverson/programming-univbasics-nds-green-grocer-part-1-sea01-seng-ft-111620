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
  
  c = 0
  
  cart.map { |element|
    #puts element
    
    
    if !re_array[c] && !re_array[c][:count]
      re_array.push(element)
      re_array[c][:count] = 1
    elsif re_array[c][:count]
      re_array[c][:count] += 1
    end
    c += 1
  }
  puts cart
  puts re_array
  return re_array
end


  