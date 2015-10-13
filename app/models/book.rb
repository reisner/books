class Book < ActiveRecord::Base

  has_many :editions

  validates :author, presence: true
  validates :title, presence: true

end
