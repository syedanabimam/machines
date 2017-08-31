require 'rails_helper'

RSpec.describe "Sentinels", type: :request do
  describe "GET /sentinels" do
    it "works! (now write some real specs)" do
      get sentinels_path
      expect(response).to have_http_status(200)
    end
  end
end
