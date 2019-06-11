class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.string :driver_name
      t.string :score
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
