class AddImagesToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :img_url, :string
  end
end
