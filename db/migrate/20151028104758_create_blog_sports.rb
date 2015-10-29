class CreateBlogSports < ActiveRecord::Migration
  def change
    create_table :blog_sports do |t|
      t.string :title
      t.text :content
      t.string :tags

      t.timestamps null: false
    end
  end
end
