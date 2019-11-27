class RemoveExtraDeviseColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :venues, :email
    remove_column :venues, :encrypted_password
    remove_column :venues, :reset_password_token
    remove_column :venues, :reset_password_sent_at
    remove_column :venues, :remember_created_at

    remove_column :bookings, :email
    remove_column :bookings, :encrypted_password
    remove_column :bookings, :reset_password_token
    remove_column :bookings, :reset_password_sent_at
    remove_column :bookings, :remember_created_at
  end
end
