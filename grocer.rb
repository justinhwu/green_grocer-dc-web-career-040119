
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
    cart.each do |a,b|
      coupons.each do |c|
        if a == c[:item] && b[:count] >= c[:num]
          b[:count] = b[:count] - c[:num]
          if newcart.has_key?("#{a} W/COUPON")
            newcart["#{a} W/COUPON"][:count] +=1
          else
            newcart["#{a} W/COUPON"] = {:price => c[:cost], :clearance => b[:clearance], :count => 1}
          end
        end
      end
      newcart[a] = b
end
newcart
end

def apply_clearance(cart)
  # code here
  newcart = {}
  cart.each do |a,b|
    newcart[a] = {}
    newcart[a][:clearance] = b[:clearance]
    newcart[a][:count] = b[:count]
    if b[:clearance] == true
      newcart[a][:price] = (b[:price] * 0.8).round(2)
    else
      newcart[a][:price] = b[:price]
    end
  end
  newcart
end

def checkout(cart, coupons)
  # code here
  cart = consolidate_cart(cart)
  cart = apply_coupons(cart,coupons)
  cart = apply_clearance(cart)
  total = 0
  cart.each do |a,b|
    total += (b[:price] * b[:count])
  end
  if total > 100
    (total *= 0.9).round(2)
  end
    total
end
