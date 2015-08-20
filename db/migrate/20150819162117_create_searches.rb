class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :location
      t.string :breed
      t.string :age
      t.string :gender
      t.string :size

      t.timestamps null: false
    end
  end
end
