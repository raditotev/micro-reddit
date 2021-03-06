class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :user_id, presence: true
  validates :title, presence: true,
                          length: {maximum:120},
                          uniqueness: true
  validates :content, presence: true
end
