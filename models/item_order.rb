class ItemOrder < ActiveRecord::Base
  belongs_to :dish
  belongs_to :party

end
