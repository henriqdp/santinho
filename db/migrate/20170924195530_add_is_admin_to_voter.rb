class AddIsAdminToVoter < ActiveRecord::Migration[5.1]
  def change
    add_column :voters, :is_admin, :boolean
  end
end
