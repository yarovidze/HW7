class AddPasswordAndEmailToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :password, :string
    add_column :authors, :email, :string
  end
end
