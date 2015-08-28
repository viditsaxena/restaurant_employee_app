class Party < ActiveRecord::Base
  has_many :item_orders
  has_many :dishes, through: :item_orders
end
