class RemoveCategoryColumnFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :category, :string
  end
end
