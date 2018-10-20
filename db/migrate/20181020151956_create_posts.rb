class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string      :shop_name,   null: false
      t.string      :post_title,  null: false
      t.text        :post_body,   null: false
      t.references  :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
