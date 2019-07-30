class ChangeTokenFieldsToActivists < ActiveRecord::Migration[5.2]
  def change
    remove_column :activists, :idToken_id
    remove_column :activists, :accessToken_id
    remove_column :activists, :article_id

    add_column :activists, :idToken, :string
    add_column :activists, :accessToken, :string
    add_column :activists, :article, :string
  end
end
