require 'spec_helper'

describe "Outings" do
  describe "GET /outings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get outings_path
      response.status.should be(200)
    end
  end
end
