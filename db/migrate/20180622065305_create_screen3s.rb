class CreateScreen3s < ActiveRecord::Migration[5.2]
  def change
    create_table :screen3s do |t|
      t.float :Total
      t.float :Link_ok
      t.float :Turbine_ok
      t.float :Run
      t.float :Gen1
      t.float :Gen2

      t.timestamps
    end
  end
end
