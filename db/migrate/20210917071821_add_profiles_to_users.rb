class AddProfilesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone_nubmer, :string
    add_column :users, :first_flag, :boolean, default: true
  end
end
