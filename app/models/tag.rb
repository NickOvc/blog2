class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :pozts, through: :taggings
end
