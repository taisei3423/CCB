class CreateMiddles < ActiveRecord::Migration[6.1]
  def change
    create_table :middles do |t|
      t.integer :course_id
      t.integer :kubun_id

      t.timestamps
    end
  end
end
