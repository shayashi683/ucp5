require 'rails_helper'

RSpec.describe "Rankings", type: :request do

  describe "GET /top" do
    it "returns http success" do
      get "/rankings/top"
      expect(response).to have_http_status(:success)
    end
  end

end
