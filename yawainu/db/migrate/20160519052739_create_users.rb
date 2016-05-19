class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :address
      t.string :password
      t.string :image
      t.text :comment

      t.timestamps null: false
    end
  end
end
