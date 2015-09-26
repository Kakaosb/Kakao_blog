class CreatePotterrs < ActiveRecord::Migration
  def change
    create_table :potterrs do |t|
      t.string :name
      t.float :spear

      t.timestamps null: false
    end
  end
end
