class AddColonnesToModelUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :telepathic_code, :integer
    add_column :users, :specie, :string
  end
end
