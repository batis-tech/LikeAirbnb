class AddImageToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :image, :string
    add_column :accounts, :comapny, :string

  end
end
