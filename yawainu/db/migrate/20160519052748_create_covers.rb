class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :image
      t.boolean :flag,    default: false, null: false

      t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
