class Comment < ApplicationRecord
  validates :content, :name, :email, presence:true
end
