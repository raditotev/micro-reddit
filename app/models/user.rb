class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true,
                            length: {maximum: 50}
  validates :email, presence: true,
                          , length: {maximum:255},
                          uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true,
                                  length: {minimum:6}
end
