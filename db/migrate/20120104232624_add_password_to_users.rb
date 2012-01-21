class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypt_pass, :string
  end
end
