class CreateWindmills < ActiveRecord::Migration[5.2]
  def change
    create_table :windmills do |t|
      t.string :millid

      t.timestamps
    end
  end
end
