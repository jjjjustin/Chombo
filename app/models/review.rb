class Review < ActiveRecord::Base
  belongs_to :user, :class_name => "User"
  belongs_to :reviewer, :class_name => "User"
  belongs_to :reservation



end
