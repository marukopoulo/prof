require 'spec_helper'

describe StaticPagesController do

  describe "GET 'complete'" do
    it "returns http success" do
      get 'complete'
      response.should be_success
    end
  end

end
