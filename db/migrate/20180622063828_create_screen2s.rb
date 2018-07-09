class CreateScreen2s < ActiveRecord::Migration[5.2]
  def change
    create_table :screen2s do |t|
      t.float :Gen0
      t.float :Gen1
      t.float :Gen2
      t.float :product

      t.timestamps
    end
  end
end
