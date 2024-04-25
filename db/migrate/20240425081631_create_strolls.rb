class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.datetime :datetime
      t.references :dogsitter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
