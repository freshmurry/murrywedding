class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
end