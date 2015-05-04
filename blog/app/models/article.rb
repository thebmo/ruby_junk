class Article < ActiveRecord::Base
	validates :title, presence: true,
					length: { minimum: 5 },
					uniqueness: true

	validates :text, presence: true, uniqueness: true

	belongs_to :user

	has_many :comments, dependent: :destroy

end
