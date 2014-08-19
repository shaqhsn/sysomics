require 'spec_helper'

describe "Strains" do
  describe "GET /strains" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get strains_path
      response.status.should be(200)
    end
  end
end
