class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.references :city, foreign_key: true
      t.references :cleaner, foreign_key: true

      t.timestamps
    end
  end
end
