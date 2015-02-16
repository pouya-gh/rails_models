class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, length: {minimum: 5, maximum: 500}
end
