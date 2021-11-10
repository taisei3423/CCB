class CreateTestguides < ActiveRecord::Migration[6.1]
  def change
    create_table :testguides do |t|
      t.string :filename
      t.integer :year

      t.timestamps
    end
  end
end
