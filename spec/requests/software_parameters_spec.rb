require 'spec_helper'

describe "SoftwareParameters" do
  describe "GET /software_parameters" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get software_parameters_path
      response.status.should be(200)
    end
  end
end
