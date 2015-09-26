class Pwheel < ActiveRecord::Base
	belongs_to :potterr
  has_many :quests

  # Pwheel attributes:
  # spear_sum -> сумма копий
  # potterr_id -> id гончара
end
