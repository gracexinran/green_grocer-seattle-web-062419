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
  consolidate_cart(cart)
  cart.each do |x|
  x.each do |name, value|

    if name == coupons[:item]
      value[:count] -= coupons[:num]
      coupon = "#{name} W/COUPON"
      x[coupon] = {}
      x[coupon][:price] = coupons[:cost]
      x[coupon][:clearance] = true
      carxt[coupon][:count] = coupons[:num]
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
