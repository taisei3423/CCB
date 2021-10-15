class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :kinds
      t.string :year
      t.string :contents
      t.string :remarks

      t.timestamps
    end
  end
end
