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
  
  ans = Array.new
  c = 0
  
  cart.map { |element|
    element.map { |key, value|
      if key != :count
        ans.push(element)
        ans[c][:count] = 1
      elsif ans[c][:item] == element[:item]
        ans[c][:count] += 1
      end
    }
    c += 1
  }
  puts ans
  return ans
end


  