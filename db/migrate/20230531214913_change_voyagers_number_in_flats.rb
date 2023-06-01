class ChangeVoyagersNumberInFlats < ActiveRecord::Migration[7.0]
  def change
    rename_column :flats, :voyagers_number, :number_of_guests
  end
end
