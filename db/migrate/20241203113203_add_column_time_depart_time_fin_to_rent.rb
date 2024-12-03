class AddColumnTimeDepartTimeFinToRent < ActiveRecord::Migration[7.2]
  def change
    add_column :rents, :Date_depart, :string
    add_column :rents, :Date_fin, :string
  end
end
