def consolidate_cart(cart)
  # code here
  newcart = {}
  cart.each do |a|
    a.each do |b,c| 
      if newcart[b]
        newcart[b][:count] +=1
      else 
        newcart[b] = c
        newcart[b][:count]= 1
      end
    end
  end
  newcart
end

def apply_coupons(cart, coupons)
  # code here
  newcart = {}
  cart.each do |a|
    a.each do |b,c|
      coupons.each do |d|
      if b == d[:item] && c[:count] >= d[:num]
        c[:count] = c[:count] = d[:num]
        if newcart.has_key?("#{b} W/COUPON")
          newcart["#{b} W/COUPON"][:count] +=1
        else
          newcart[]
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
