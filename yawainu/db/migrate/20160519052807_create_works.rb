class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.date :start_date
      t.date :end_date
      t.text :comment
      t.boolean :flag,    default: false, null: false

      t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
