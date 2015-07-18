class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :body, length: {minimum: 5, maximum: 500}
  validates :user_id, presence: true

  before_validation :omit_whitespaces_from_title

  private
  def omit_whitespaces_from_title
    self.title = self.title.chomp
  end
end
