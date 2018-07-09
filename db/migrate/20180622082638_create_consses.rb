class CreateConsses < ActiveRecord::Migration[5.2]
  def change
    create_table :consses do |t|
      t.string :name
      t.string :place

      t.timestamps
    end
  end
end
