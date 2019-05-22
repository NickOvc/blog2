class Comment < ApplicationRecord
  belongs_to :pozt
  validates :body, presence: true
end
