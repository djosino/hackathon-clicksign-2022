class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.integer :kind, null: false, default: 0
      t.string :document_number, null: false, limit: 14

      t.timestamps
    end
  end
end
