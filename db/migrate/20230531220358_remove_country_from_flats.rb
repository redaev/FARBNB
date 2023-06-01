class RemoveCountryFromFlats < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :country, :string
  end
end
