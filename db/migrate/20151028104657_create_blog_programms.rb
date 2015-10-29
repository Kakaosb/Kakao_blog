class CreateBlogProgramms < ActiveRecord::Migration
  def change
    create_table :blog_programms do |t|
      t.string :title
      t.text :content
      t.string :tags

      t.timestamps null: false
    end
  end
end
