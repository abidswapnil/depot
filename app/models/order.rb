class Order < ApplicationRecord
  enum pay_type: {
    check: 0,
    credit_card: 1,
    purchase_order: 2
  }
  validates :name, :address, :email, presence: true
end
