class TeamUserId < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :user_id, :string
  end
end
