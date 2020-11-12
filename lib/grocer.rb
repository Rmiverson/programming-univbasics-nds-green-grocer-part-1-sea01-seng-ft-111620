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
    if !ans[c]
      ans[c] = element
      ans[c][:count] = 1
    else 
      #puts"else"
      element.each { |key, value|
        if key == :item
          #puts "true"
          ans.each { |a_element|
            if a_element[:item] == value
              puts "true"
              ans[c][:count] += 1
            end
          }
        end
      }
    end
    #binding.pry
    c += 1
  }
  puts ans
  return ans
end


  