class AddContentToQuotes < ActiveRecord::Migration[7.0]
  def change
    add_column :quotes, :content, :string
  end
end
