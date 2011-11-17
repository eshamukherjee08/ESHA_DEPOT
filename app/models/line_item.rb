class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product   #rows in line_item tabel r children of rows in carts and products.
  belongs_to :cart
  
  def total_price
    product.price * quantity
  end
end
