class CreateCafes < ActiveRecord::Migration
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :rating
      t.timestamps
    end
  end
end
