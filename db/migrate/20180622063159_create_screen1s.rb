class CreateScreen1s < ActiveRecord::Migration[5.2]
  def change
    create_table :screen1s do |t|
      t.float :Mode
      t.float :Power
      t.float :Gen
      t.float :rotor
      t.float :wind
      t.float :pitch

      t.timestamps
    end
  end
end
