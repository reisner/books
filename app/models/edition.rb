class Edition < ActiveRecord::Base
  belongs_to :book

  #To Add: Country, #printed, ...

  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :cover,
    content_type: {content_type: /\Aimage\/.*\Z/}, 
    size: { in: 0..300.kilobytes }

  has_attached_file :copyright_page, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :copyright_page, content_type: /\Aimage\/.*\Z/
end
