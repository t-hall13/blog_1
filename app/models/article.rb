class Article < ActiveRecord::Base
   belongs_to :user
   validates :title, presence: true, length: { minimum: 5, maximum: 50 }
   validates :description, presence: true, length: { minimum: 5, maximum: 150 }
   
end