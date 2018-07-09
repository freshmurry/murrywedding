class Comment < ActiveRecord::Base
  # self.abstract_class = true 
  belongs_to :pin
  has_many :users
end