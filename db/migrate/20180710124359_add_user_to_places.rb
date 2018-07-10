class AddUserToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :user, :reference
  end
end
