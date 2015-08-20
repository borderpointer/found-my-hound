class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :avatar
      t.integer :location
      t.string :name
      t.string :breed
      t.string :age
      t.string :gender
      t.string :size
      t.string :contact_email

      t.timestamps null: false
    end
  end
end
