class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum pay_type: {
    check: 0,
    credit_card: 1,
    purchase_order: 2
  }
  validates :name, :address, :email, presence: true

  def add_line_items_from_cart(cart)
    cart.line_items.each do |line_item|
      line_item.cart_id = nil
    end
  end
end
