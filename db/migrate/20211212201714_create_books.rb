class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.text :synopsis
      t.string :isbn
      t.string :publisher
      t.integer :publication_year
      t.integer :number_of_pages
      t.integer :original_release_year
      t.timestamps
    end
  end
end
