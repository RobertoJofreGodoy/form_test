class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.integer :number
      t.string :location
      t.boolean :inhabited

      t.timestamps
    end
  end
end
