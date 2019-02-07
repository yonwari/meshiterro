class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image #idは含めない
end
