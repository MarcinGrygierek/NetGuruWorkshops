require 'spec_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET main" do
    it "returns http success" do
      get :main
      expect(response).to have_http_status(:success)
    end
  end

end
