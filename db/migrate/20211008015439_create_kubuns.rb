class CreateKubuns < ActiveRecord::Migration[6.1]
  def change
    create_table :kubuns do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
