class AddNationalityToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :nationality, :string
  end
end
