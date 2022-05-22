class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	
	# has_attached_file :image, style: { :medium => "300x300>", :thumb => "100x100>" }
	# validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :image, presence: true
	validates :description, presence: true
end

# class Pin < ActiveRecord::Base
# 	belongs_to :user

# 	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

# 	validates :image, presence: true
# 	validates :description, presence: true
# end