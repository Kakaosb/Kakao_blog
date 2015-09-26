class AddTitleToPwheels < ActiveRecord::Migration
  def change
    add_column :pwheels, :title, :string
  end
end
