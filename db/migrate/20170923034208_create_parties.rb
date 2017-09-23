class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :initials, limit: 10

      t.timestamps
    end
    add_index :parties, :initials, unique: true
  end
end
