class Question < ActiveRecord::Base
  # has_many :comments

  acts_as_votable

  validates :option_one, :option_two, :presence => true

end
