class Picture < ActiveRecord::Base
  belongs_to :page
  has_attached_file :image, styles: { medium: "150x150>", thumb: "75x75>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def style
  	string = ""
  	string += "width:#{width}" if width.present?
  	string += "height:#{height}" if height.present?
  	string
  end

  def placement
  	string = "height: 0px; position: relative;"
  	string += "left:#{xpos};" if xpos.present?
  	string += "top:#{ypos};" if ypos.present?
  	string += "z-index:#{zpos}" if zpos.present?
  	string
  end

end
