class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	
	# has_attached_file :image, style: { :medium => "300x300>", :thumb => "100x100>" }
	
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :image, presence: true
	validates :description, presence: true
end
