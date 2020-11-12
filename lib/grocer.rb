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
  
  ans = []
  c = 0
  
  cart.each { |element|
    element.each { |key, value|
      if !ans[c]
        ans[c] = element
      end
      binding.pry
      if ans[c][key] == :count
        ans[c][:count] += 1
      else
        ans[c][:count] = 1
      end
    }
    c += 1
  }
  puts cart
  puts ans
  return ans
end


  