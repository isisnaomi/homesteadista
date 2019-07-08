class AddCategoryToActivists < ActiveRecord::Migration[5.2]
  def change
    add_reference :activists, :category, index: true
  end
end
