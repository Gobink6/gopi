class CreateFacedets < ActiveRecord::Migration[5.2]
  def change
    create_table :facedets do |t|
      t.string :imagone
      t.string :imagtwo
      t.string :imagthree

      t.timestamps
    end
  end
end
