class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :sub_comments, class_name: "Comment", foreign_key: "main_comment_id"
  belongs_to :main_comment, class_name: "Comment" 
end
