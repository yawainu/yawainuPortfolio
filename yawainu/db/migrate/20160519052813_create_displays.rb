class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.boolean :cover
      t.boolean :gallery
      t.boolean :work
      t.boolean :contact

      t.timestamps null: false
    end
  end
end
