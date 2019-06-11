class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :location
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
