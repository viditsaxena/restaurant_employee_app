class Dish < ActiveRecord::Base
  has_many :item_orders
  has_many :parties, through: :item_orders
end
