require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "should work" do
      get "/users"
      # puts response.inspect
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end

  describe "POST /users" do
    it "return the error message for bio not given." do
      post "/users", :params => { :user => {:name => "Writer1"} }
      expect(response).to have_http_status(200)
      expect(response).to render_template(:new)
      expect(response.body).to include("bio")
      expect(response.body).to include("过短")
    end

    it "created the user" do
      post "/users", :params => { :user => {:name => "Writer2", bio: 'biobiobio2bio'} }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to('/users')
    end
  end
end
