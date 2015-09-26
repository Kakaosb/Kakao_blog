class RemovePotterrIdFromQuests < ActiveRecord::Migration
  def change
    remove_column :quests, :potterr_id, :integer
  end
end
