class AddCoordinatesToGonflables < ActiveRecord::Migration[7.2]
  def change
    add_column :gonflables, :latitude, :float
    add_column :gonflables, :longitude, :float
  end
end
