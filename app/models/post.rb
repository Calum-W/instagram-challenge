class Post < ApplicationRecord
  belongs_to :user
  validates_length_of :description, :maximum => 200
end
