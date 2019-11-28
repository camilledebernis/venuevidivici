class AddImgurlToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :imgurl, :string
  end
end
