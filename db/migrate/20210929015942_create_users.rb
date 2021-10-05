class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :account
      t.string :password
      t.integer :schoolyear
      t.string :username
      t.string :nickname

      t.timestamps
    end
  end
end
