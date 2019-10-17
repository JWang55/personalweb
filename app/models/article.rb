class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :proper, presence: true
end
