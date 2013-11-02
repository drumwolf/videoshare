class Video < ActiveRecord::Base
  attr_accessible :url
  belongs_to :users

  def youtube_id
    self.url[-11..-1]
  end
end
