class CreateWindFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :wind_farms do |t|

    	t.string :name

      t.timestamps
    end
  end
end
