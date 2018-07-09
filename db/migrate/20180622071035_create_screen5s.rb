class CreateScreen5s < ActiveRecord::Migration[5.2]
  def change
    create_table :screen5s do |t|
      t.float :Power
      t.float :Cosphi
      t.float :freq
      t.float :L1_Voltage
      t.float :L1_Current
      t.float :L2_voltage
      t.float :L2_Current
      t.float :L3_voltage
      t.float :L3_current

      t.timestamps
    end
  end
end
