class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.boolean :cover,     default: false, null: false
      t.boolean :gallery,   default: false, null: false
      t.boolean :work,      default: false, null: false
      t.boolean :contact,   default: false, null: false

      t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
