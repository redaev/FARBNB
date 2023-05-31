class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.integer :voyagers_number
      t.integer :price
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
