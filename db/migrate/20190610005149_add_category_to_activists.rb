class AddCategoryToActivists < ActiveRecord::Migration[5.2]
  def change
    add_reference :activists, :category, foreign_key: true
  end
end
