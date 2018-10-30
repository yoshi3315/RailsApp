class AddCurrentSignInAtToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :current_sign_in_at, :datetime
  end
end
