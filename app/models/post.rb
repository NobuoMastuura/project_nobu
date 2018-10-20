class Post < ApplicationRecord
  has_many    :tapispot_scores, dependent: :destroy
  has_many    :images,          dependent: :destroy
  belongs_to  :user
end
