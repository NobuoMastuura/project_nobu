# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby, Rails version
Ruby 2.5.0
Rails 5.2.1


* Database
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id      |integer|null: false, foreign_key: true|
|user_name    |string |null: false|
|email   |string |null: false, add_index unique: true|
|password|string |null: false|

### Association
- has_many :posts


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|id       |integer|null: false|
|shop_name  |string|
|post_title |string|
|post_body  |text|
|Users_id|integer|null: false, foreign_key: true|


### Association
- has_many :images
- has_many :tapospot_scores
- belongs_to :user



## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|id    |integer|null: false|
|image_url |string |null: false|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post


## tapospot_scoresテーブル
|Column|Type|Options|
|------|----|-------|
|id     |integer|null: false|
|total_score|integer|null: false|
|taste_score|integer|null: false|
|service_score|integer|null: false|
|tapioca_score|integer|null: false|
|ambiance_score|integer|null: false|
|price_score|integer|null: false|
|Posts_id|integer|null: false, foreign_key: true|

### Association
belongs_to :post
