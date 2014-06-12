require 'spec_helper'

describe "data_processing_types/index" do
  before(:each) do
    assign(:data_processing_types, [
      stub_model(DataProcessingType,
        :name => "Name"
      ),
      stub_model(DataProcessingType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of data_processing_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
