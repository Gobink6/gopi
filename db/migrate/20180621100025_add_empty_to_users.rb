class AddEmptyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :empty, :string
  end
end
