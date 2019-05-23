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
  list = {}
  cart.each do |k,v|
    list[k] = v
  end
  coupons.each do |x|
    cart.each do |name, value|
      if name == x[:item]
        list[name][:count] = value[:count] - x[:num]
        coupon = "#{name} W/COUPON"
        if !list[coupon]

        list[coupon] = {}
        list[coupon][:price] = x[:cost]
        list[coupon][:clearance] = value[:clearance]
        list[coupon][:count] = 1
        else
          list[coupon][:count] += 1
        end
    end
  end
end
  list
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
