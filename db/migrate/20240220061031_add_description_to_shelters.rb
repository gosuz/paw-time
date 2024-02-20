class AddDescriptionToShelters < ActiveRecord::Migration[7.1]
  def change
    add_column :shelters, :description, :string
  end
end
