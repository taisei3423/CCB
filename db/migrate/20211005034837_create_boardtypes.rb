class CreateBoardtypes < ActiveRecord::Migration[6.1]
  def change
    create_table :boardtypes do |t|
      t.string :threadname

      t.timestamps
    end
  end
end
