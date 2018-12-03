class CreatePropertyMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :property_materials do |t|
      t.references :property, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
