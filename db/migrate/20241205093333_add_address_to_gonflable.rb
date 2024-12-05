class AddAddressToGonflable < ActiveRecord::Migration[7.2]
  def change
    add_column :gonflables, :address, :string
  end
end
