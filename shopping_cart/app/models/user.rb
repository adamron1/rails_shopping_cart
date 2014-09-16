class User < ActiveRecord::Base
  has_many :carts
  has_many :products, through: :carts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def total_to_pay
    total = 0
    self.carts.each {|cart_item| total += cart_item.product.price }
    total
  end

end
