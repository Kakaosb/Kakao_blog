class CreateBlogArts < ActiveRecord::Migration
  def change
    create_table :blog_arts do |t|
      t.string :title
      t.text :content
      t.string :tags

      t.timestamps null: false
    end
  end
end
