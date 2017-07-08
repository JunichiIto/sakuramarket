class CartItem < ApplicationRecord
  belongs_to :cart, touch: true
  belongs_to :product

  before_create :set_product_price

  def order
    OrderItem.new(product: product, quantity: quantity, price: price)
  end

  def subtotal
    quantity * price
  end

  private
  def set_product_price
    unless self.price
      self.price = self.product.price
    end
  end
end
