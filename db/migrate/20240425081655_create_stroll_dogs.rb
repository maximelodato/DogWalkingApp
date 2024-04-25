class CreateStrollDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :stroll_dogs do |t|
      t.references :stroll, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
