class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |a|
      a.string :name
      a.integer :nausea
      a.integer :happiness
      a.integer :tickets
      a.integer :height
      a.string :password
      a.boolean :admin, default: false
    end
  end
end
