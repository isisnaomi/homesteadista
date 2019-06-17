class CreateActivists < ActiveRecord::Migration[5.2]
  def change
    create_table :activists do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :profile_picture
      t.string :country
      t.string :city
      t.string :website
      t.string :occupation
      t.text :mission
      t.text :story

      t.timestamps
    end
  end
end
