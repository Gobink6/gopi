class CreateVideoanalytics < ActiveRecord::Migration[5.2]
  def change
    create_table :videoanalytics do |t|
      t.string :noplate
      t.string :intime
      t.string :outtime
      t.string :status

      t.timestamps
    end
  end
end
