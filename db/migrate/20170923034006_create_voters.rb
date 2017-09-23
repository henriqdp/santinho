class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :token
      t.integer :city_id

      t.timestamps
    end
    add_index :voters, :email, unique: true
    add_index :voters, :token, unique: true
  end
end
