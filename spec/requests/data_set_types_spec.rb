require 'spec_helper'

describe "DataSetTypes" do
  describe "GET /data_set_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get data_set_types_path
      response.status.should be(200)
    end
  end
end
