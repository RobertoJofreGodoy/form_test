class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :number
      t.string :name
      t.references :assessment, foreign_key: true

      t.timestamps
    end
  end
end
