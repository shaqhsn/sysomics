require 'spec_helper'

describe "data_processings/index" do
  before(:each) do
    assign(:data_processings, [
      stub_model(DataProcessing,
        :data_processing_type_id => 1,
        :software_id => "",
        :data_set_id => 2,
        :file_id => 3
      ),
      stub_model(DataProcessing,
        :data_processing_type_id => 1,
        :software_id => "",
        :data_set_id => 2,
        :file_id => 3
      )
    ])
  end

  it "renders a list of data_processings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
