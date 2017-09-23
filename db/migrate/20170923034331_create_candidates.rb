class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.references :voter, foreign_key: true
      t.string :screen_name
      t.references :party, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
