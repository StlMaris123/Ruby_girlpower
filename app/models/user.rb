class User < ApplicationRecord
   VALID_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, length: { maximum: 20 },
                    uniqueness: true
  validates :email, presence: true, length: { maximum: 100 },
          format: {   with: VALID_REGEX },
          uniqueness: true
end
