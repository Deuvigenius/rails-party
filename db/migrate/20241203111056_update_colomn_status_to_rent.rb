class UpdateColomnStatusToRent < ActiveRecord::Migration[7.2]
  def change
    change_column :rents, :statut, :string, default: "En attente"
  end
end
