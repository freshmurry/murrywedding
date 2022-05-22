# class User < ApplicationRecord
  
#   devise :database_authenticatable, :registerable,
#         :recoverable, :rememberable, :trackable, :validatable
  
#   has_many :pins, dependent: :destroy
#   has_many :comments, dependent: :destroy
       
#   validates :name, presence: true, length: {maximum: 50}

#   #validates :password, :presence => true,
#   				        		# :on => :create,
#   				        		# :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }
# end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

  has_many :pins, dependent: :destroy

  validates :name, presence: true
end