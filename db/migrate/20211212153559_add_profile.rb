class AddProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :favorite_sport, :string
    add_index :users, :first_name, unique: true
  end
end
