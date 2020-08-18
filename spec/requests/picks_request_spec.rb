require 'rails_helper'

RSpec.describe "Picks", type: :request do

  describe "GET /top" do
    it "returns http success" do
      get "/picks/top"
      expect(response).to have_http_status(:success)
    end
  end

end
