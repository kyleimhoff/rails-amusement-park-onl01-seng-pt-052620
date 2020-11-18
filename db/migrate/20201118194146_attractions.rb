class Attractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |a|
      a.string :name
      a.integer :min_height
      a.integer :nausea_rating
      a.integer :happiness_rating
      a.integer :tickets
    end
  end
end
