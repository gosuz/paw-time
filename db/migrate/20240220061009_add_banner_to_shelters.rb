class AddBannerToShelters < ActiveRecord::Migration[7.1]
  def change
    add_column :shelters, :banner, :string
  end
end
