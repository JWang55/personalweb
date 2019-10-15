class Comment < ApplicationRecord
  belongs_to :visitor
  belongs_to :article
end
