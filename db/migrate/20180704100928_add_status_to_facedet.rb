class AddStatusToFacedet < ActiveRecord::Migration[5.2]
  def change
    add_column :facedets, :status, :string
  end
end
