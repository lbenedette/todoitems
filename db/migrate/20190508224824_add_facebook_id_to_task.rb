class AddFacebookIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :facebook_token, :string
  end
end
