class CreatePwheels < ActiveRecord::Migration
  def change
    create_table :pwheels do |t|
      t.float :spear_sum
      t.timestamps null: false
    end
  end
end
