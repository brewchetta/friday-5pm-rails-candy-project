class CreateTreats < ActiveRecord::Migration[6.0]
  def change
    create_table :treats do |t|
      t.string :name
      t.integer :rating
      t.string :ingredients

      t.timestamps
    end
  end
end
