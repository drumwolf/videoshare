require 'spec_helper'

describe "videos/index" do
  before :each do
    assign(:video, stub_model(Video,
      :url => "http://youtu.be/Soo43Yu3G9o"
    ).as_new_record)
    assign(:videos, [
      stub_model(Video,
        :url => "http://youtu.be/Soo43Yu3G9o"
      ),
      stub_model(Video,
        :url => "http://youtu.be/Soo43Yu3G9o"
      )
    ])
  end

  it "renders index view correctly" do
    render
  end
end
