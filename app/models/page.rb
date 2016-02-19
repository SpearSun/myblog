class Page < ActiveRecord::Base
  validates :name, presence: true
  validates :slug, presence: true
  validates :body, presence: true
end
