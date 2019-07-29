class AddIdTokenAndAccessTokenToActivists < ActiveRecord::Migration[5.2]
  def change
    add_reference :activists, :idToken, index: true
    add_reference :activists, :accessToken, index: true
  end
end
