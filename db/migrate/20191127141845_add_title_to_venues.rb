class AddTitleToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :title, :string
  end
end
