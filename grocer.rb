def find_item_by_name_in_collection(string, aoh)
  # Implement me first!
  index = 0 
  
  while index < aoh.length do 
    if aoh[index][:item] == string
      return aoh[index]
    end
    index += 1
  end
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  counter = 0 
  new_cart = []
  
  while counter < cart.length do 
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
      if new_cart_item != nil 
        new_cart_item[:count] += 1 
      else 
        new_cart_item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
        }
        new_cart << new_cart_item 
      end
      counter +=1
  end
  new_cart
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  counter = 0 
  
  while counter < cart.length do 
    cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
    
    counter += 1  
    
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
