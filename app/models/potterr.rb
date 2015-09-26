class Potterr < ActiveRecord::Base
	has_many :pwheels
  has_many :quests, through: :pwheels

  # Potterr attributes:
  # name -> имя клиента
  # spear -> длина копья
end
