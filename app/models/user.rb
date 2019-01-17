class User < ActiveRecord::Base
belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/images/blank.jpg"
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
  validates :name, presence: true, length: {maximum: 50}

  #validates :password, :presence => true,
  				        		# :on => :create,
  				        		# :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }

  has_many :pins, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :photos

  
  validates :name, presence: true

  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first

    if user
      return user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name
        user.image = auth.info.image
        user.uid = auth.uid
        user.provider = auth.provider

        # If you are using confirmable and the provider(s) you use validate emails,
        # uncomment the line below to skip the confirmation emails.
        user.skip_confirmation!
      end
    end
  end  
end