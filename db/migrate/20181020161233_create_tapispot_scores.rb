class CreateTapispotScores < ActiveRecord::Migration[5.2]
  def change
    create_table :tapispot_scores do |t|
      t.integer     :total_score,     null: false
      t.integer     :taste_score,     null: false
      t.integer     :service_score,   null: false
      t.integer     :tapioca_score,   null: false
      t.integer     :ambiance_score,  null: false
      t.integer     :price_score,     null: false
      t.references  :post,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
