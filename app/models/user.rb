class User < ActiveRecord::Base
belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/assets/images/blank.jpg"
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
  validates :name, presence: true, length: {maximum: 50}

  #validates :password, :presence => true,
  				        		# :on => :create,
  				        		# :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }

  has_many :pins, dependent: :destroy

  validates :name, presence: true

end