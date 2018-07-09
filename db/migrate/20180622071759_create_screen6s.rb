class CreateScreen6s < ActiveRecord::Migration[5.2]
  def change
    create_table :screen6s do |t|
      t.float :Ambi
      t.float :Gear
      t.float :Gen1
      t.float :Gen2
      t.float :Nacel
      t.float :Cntrl
      t.float :Hydr

      t.timestamps
    end
  end
end
