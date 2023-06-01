class ChangeCityInFlats < ActiveRecord::Migration[7.0]
  def change
    rename_column :flats, :city, :planet
  end
end
