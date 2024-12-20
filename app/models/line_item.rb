class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order, optional: true
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
