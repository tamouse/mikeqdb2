require 'spec_helper'

describe QuotesController do

  describe "GET 'show'" do
    it "returns http success" do
      qe = FactoryGirl.create(:quote)
      get :show, {'id' => qe.id}
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
  end

end
