def consolidate_cart(cart)
  # code here
  list = {}
  cart.each do |x|
    x.each do |k,v|
      if !list[k]
        list[k] = {}
        v.each do |a,b|
          list[k][a] = b
        end
        list[k][:count] = 1
      else
        list[k][:count] += 1
      end
    end
  end
  list

end

def apply_coupons(cart, coupons)
  # code here

coupons.each do |x|
  cart.each do |name, value|
    
    if name == x[:item]
      value[:count] -= x[:num]
      coupon = "#{name} W/COUPON"
      cart[coupon] = {}
      cart[coupon][:price] = x[:cost]
      cart[coupon][:clearance] = true
      cart[coupon][:count] = x[:num]
    end
  end
end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
