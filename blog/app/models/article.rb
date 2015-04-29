class Article < ActiveRecord::Base
	validates :title, presence: true,
					length: { minimum: 5 },
					uniqueness: true

	validates :text, presence: true, uniqueness: true

	has_many :comments

end
