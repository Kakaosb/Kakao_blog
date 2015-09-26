class Quest < ActiveRecord::Base
	belongs_to :potterr
  belongs_to :pwheel

  # Quests attributes:
  # name -> название квеста
  # pwheel_id -> id гончарного круга
end
