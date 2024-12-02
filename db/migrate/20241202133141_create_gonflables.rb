class CreateGonflables < ActiveRecord::Migration[7.2]
  def change
    create_table :gonflables do |t|
      t.string :name
      t.float :price
      t.text :content
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
