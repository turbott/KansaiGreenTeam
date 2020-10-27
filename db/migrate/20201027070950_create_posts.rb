class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :data_url
      t.string :description
      t.references :user
      t.timestamps null: false
    end
  end
end
