class AddPwheelRefToQuests < ActiveRecord::Migration
  def change
    add_reference :quests, :potterr, index: true, foreign_key: true
    add_reference :quests, :pwheel, index: true, foreign_key: true
  end
end
