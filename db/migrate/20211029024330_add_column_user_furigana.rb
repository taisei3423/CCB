class AddColumnUserFurigana < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :furigana, :string
        
  end
end
