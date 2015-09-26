class AddPotterrRefToPwheels < ActiveRecord::Migration
  def change
    add_reference :pwheels, :potterr, index: true, foreign_key: true
  end
end
