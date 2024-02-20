class AddLogoToShelters < ActiveRecord::Migration[7.1]
  def change
    add_column :shelters, :logo, :string
  end
end
