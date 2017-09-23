class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :initials, limit: 2

      t.timestamps
    end
    add_index :states, :name, unique: true
    add_index :states, :initials, unique: true
  end
end
