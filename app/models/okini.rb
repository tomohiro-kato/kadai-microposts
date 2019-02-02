class Okini < ApplicationRecord
  belongs_to :user
  belongs_to :microposts
end
