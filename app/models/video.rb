class Video < ActiveRecord::Base
  attr_accessible :url
  belongs_to :users
end
