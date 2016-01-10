class LegoSet < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :link, using: :url

  has_attached_file :set_img, styles: { set_index: "225x225>", set_show: "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :set_img, content_type: /\Aimage\/.*\Z/
end