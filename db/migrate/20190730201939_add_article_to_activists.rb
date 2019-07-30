class AddArticleToActivists < ActiveRecord::Migration[5.2]
  def change
    add_reference :activists, :article, index: true
  end
end
