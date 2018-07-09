class AddNoplateToFacedet < ActiveRecord::Migration[5.2]
  def change
    add_column :facedets, :noplate, :string
  end
end
