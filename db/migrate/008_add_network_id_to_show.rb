class AddNetworkIdToShow < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :nework_id, :integer
  end
end
