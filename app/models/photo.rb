class Photo < ActiveRecord::Base
  belongs_to :pin
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },
  :source_file_options => { :all => '-auto-orient' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
end