class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.text :abstract
      t.string :cover_img

      t.timestamps
    end
  end
end
