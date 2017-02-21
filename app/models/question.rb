class Question < ActiveRecord::Base
  # has_many :comments

  has_attached_file :image_one, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\z/


  has_attached_file :image_two, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\z/

  acts_as_votable

  validates :option_one, :option_two, :presence => true

end
