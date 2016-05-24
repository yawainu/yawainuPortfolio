class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :title,            :null => false
      t.text :comment,            :null => false
      t.string :main_color,       default: '#212121'
      t.string :sub_color,        default: '#2196F3'
      t.string :crypted_password, :null => false
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end