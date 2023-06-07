class AddManuToQuotes < ActiveRecord::Migration[7.0]
  def change
    add_column :quotes, :manu, :string
  end
end
