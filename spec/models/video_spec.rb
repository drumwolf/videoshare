require 'spec_helper'

describe Video do
  before(:each) do
    @attr = { :url => "http://goo.gl/QrgIo" }
  end

  it "should create a new instance given a valid attribute" do
    Video.create!(@attr)
  end

  it 'has video association' do
    video = Video.create!(@attr)
    video.should respond_to(:users)
  end
end
