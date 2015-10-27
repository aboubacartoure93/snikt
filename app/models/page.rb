class Page < ActiveRecord::Base
  has_many :pictures
  belongs_to :book
  accepts_nested_attributes_for :pictures

  def bg
  	pictures.where(background: true).first
  end

  def images
  	pictures - [bg]
  end
end
