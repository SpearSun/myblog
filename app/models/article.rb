class Article < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :favorites
  validates :title, presence: true, length: { minimum: 5 }

  references :user
end
