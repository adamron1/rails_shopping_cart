class Product < ActiveRecord::Base

  def dollar_price
    price / 100.00
  end
end
