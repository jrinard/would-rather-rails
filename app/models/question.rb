class Question < ActiveRecord::Base
  # has_many :comments

  validates :option_one, :option_two, :presence => true

end
