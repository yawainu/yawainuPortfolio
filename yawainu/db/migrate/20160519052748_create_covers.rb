class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :image
      t.boolean :flag

      t.timestamps null: false
    end
  end
end
