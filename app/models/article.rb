class Article < ActiveRecord::Base
  belongs_to :user, :class_name => "User"
  belongs_to :updated_by_user, :class_name => 'User'
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :user_id, presence: true
end