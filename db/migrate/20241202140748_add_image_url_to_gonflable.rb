class AddImageUrlToGonflable < ActiveRecord::Migration[7.2]
  def change
    add_column :gonflables, :image_url, :string
  end
end
