class AddToUserToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :to_user, :string
  end
end
