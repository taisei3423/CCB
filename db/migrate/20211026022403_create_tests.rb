class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.date :deadline
      t.date :day
      t.string :department
      t.integer :price
      t.integer :one
      t.integer :two
      t.integer :three
      t.string :person
      t.string :detail

      t.timestamps
    end
  end
end
