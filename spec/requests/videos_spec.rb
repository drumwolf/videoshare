require 'spec_helper'

describe "Videos" do
  describe "GET /videos" do
    it "returns video path" do
      get videos_path
      response.status.should be(200)
    end

    it 'renders correct video dashboard' do
      visit videos_path
      page.should have_content 'Your Current Videos'
    end
  end
end
