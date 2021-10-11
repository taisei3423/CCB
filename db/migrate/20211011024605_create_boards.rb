class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.integer :boardtype_id
      t.string :nickname
      t.text :comment

      t.timestamps
    end
  end
end
