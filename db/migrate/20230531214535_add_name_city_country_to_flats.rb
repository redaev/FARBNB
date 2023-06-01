class AddNameCityCountryToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :name, :string
    add_column :flats, :city, :string
    add_column :flats, :country, :string
  end
end
