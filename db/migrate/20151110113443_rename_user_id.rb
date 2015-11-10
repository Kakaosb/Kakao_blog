class RenameUserId < ActiveRecord::Migration
  def up
    rename_column :redactor_assets, :user_id, :admin_id
  end

  def down
    rename_column :redactor_assets, :admin_id, :user_id
  end
end
