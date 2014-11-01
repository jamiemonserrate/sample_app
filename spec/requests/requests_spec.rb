require 'rails_helper'

RSpec.describe "Requests", :type => :request do
  describe "GET /requests" do
    it "works! (now write some real specs)" do
      get requests_path
      expect(response.status).to be(200)
    end
  end
end
