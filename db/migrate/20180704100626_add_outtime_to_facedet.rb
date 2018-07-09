class AddOuttimeToFacedet < ActiveRecord::Migration[5.2]
  def change
    add_column :facedets, :outtime, :string
  end
end
