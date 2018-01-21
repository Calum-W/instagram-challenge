class Post < ApplicationRecord
  belongs_to :user
  validates_length_of :description, maximum: 200

  has_attached_file :image, styles: { medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", validate_media_type: false
  do_not_validate_attachment_file_type :image
end
