class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :image
      t.string :title
      t.text :comment
      t.boolean :flag

      t.timestamps null: false
    end
  end
end
