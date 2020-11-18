class Rides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |a|
      a.integer :user_id
      a.integer :attraction_id
    end
  end
end
