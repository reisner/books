class Edition < ActiveRecord::Base
  belongs_to :book

  validates :pub_year, :numericality => { :greater_than => 0, :less_than_or_equal_to => Time.now.year }, presence: true
  validates :edition_type, :length => { :minimum => 4, :message => 'must be specified' }
  validates :book_id, presence: true
  validates :number_printed, :numericality => { :greater_than => 0, :allow_blank => true }

  #validates :edition_type, inclusion: { in: edition_types.keys }

  #To Add: Country, #printed, ...

  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :cover,
    content_type: {content_type: /\Aimage\/.*\Z/}, 
    size: { in: 0..300.kilobytes }

  has_attached_file :copyright_page, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :copyright_page,
    content_type: {content_type: /\Aimage\/.*\Z/}, 
    size: { in: 0..300.kilobytes }

end
