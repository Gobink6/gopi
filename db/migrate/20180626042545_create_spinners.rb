class CreateSpinners < ActiveRecord::Migration[5.2]
  def change
    create_table :spinners do |t|
      t.string :username
      t.string :windform
      t.string :windmill
      t.boolean :millactive

      t.timestamps
    end
  end
end
