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

def apply_coupons(cart:[], coupons:[])
  # code here
  newcart = {}
    cart.each do |a,b|
      coupons.each do |c|
        if a == c[:item] && a[:count] >= c[:num]
          b[:count] = b[:count] - c[:num]
          if newcart.has_key?("#{a} W/COUPON")
            newcart["#{a} W/COUPON"][:count] +=1
          else
            newcart["#{a} W/COUPON"] = {:price => 

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
