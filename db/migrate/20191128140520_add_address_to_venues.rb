class AddAddressToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :address, :string
  end
end
