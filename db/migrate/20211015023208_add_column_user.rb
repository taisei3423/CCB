class AddColumnUser < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :course, :integer
    add_column :users, :detail, :text

  end
end
