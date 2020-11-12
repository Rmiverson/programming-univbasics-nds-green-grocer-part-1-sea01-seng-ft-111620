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
  ans = []
  c = 0
  
  cart.each { |element|
  
    element.each { |key, value|
      if !ans[c]
        ans[c] = { }
      end
      ans[c][key] = value
      ans[c].store(:count, 1)
    }
    c += 1
  }
  puts ans
  return ans
end


  