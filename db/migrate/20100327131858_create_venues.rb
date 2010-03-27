class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_4
      t.string :city
      t.string :county
      t.string :post_code
      t.string :country
      t.string :website
      t.string :consitution
      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
