class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :name
      t.integer :age
      t.string :username
      t.string :password
      t.string :dob
      t.string :gender
      t.string :windformid
      t.boolean :active
      t.string :email
      t.string :role
      t.string :windformid

      t.timestamps
    end
  end
end
