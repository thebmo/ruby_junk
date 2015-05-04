class Comment < ActiveRecord::Base
	validates :commenter, presence: true
	validates :body, presence: true
	belongs_to :article, :user
end
