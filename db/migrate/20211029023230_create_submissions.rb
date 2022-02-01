class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.string :title
      t.date :deadline
      t.string :remarks
      t.integer :year

      t.timestamps
    end
  end
end
