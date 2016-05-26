class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title,    default: "Category", null: false
      t.boolean :flag,    default: false, null: false

      t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
