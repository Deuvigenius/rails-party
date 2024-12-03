class RenameColumnsDateToRent < ActiveRecord::Migration[7.2]
  def change
    rename_column :rents, :Date_depart, :date_debut
    rename_column :rents, :Date_fin, :date_fin
  end
end
