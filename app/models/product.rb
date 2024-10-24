class Product < ApplicationRecord
  validates :title, :image_url, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: "must be a URL for GIF, JPG or PNG image."
  }

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      throw :abort
    end
  end
end
