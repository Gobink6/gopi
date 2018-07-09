class CreateScreenOnes < ActiveRecord::Migration[5.2]
  def change
    create_table :screen_ones do |t|
      t.string :mod
      t.float :power
      t.float :gen
      t.float :rotor
      t.float :wind
      t.float :pitch

      t.timestamps
    end
  end
end
