class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :number_of_people
      t.text :special_request
      t.boolean :has_paid
      t.integer :stand_number
      t.timestamps
    end
  end
  end
