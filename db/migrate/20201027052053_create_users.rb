class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :account_name
      t.string :password_digest
      t.string :icon_url
      t.timestamps null: false
    end
  end
end