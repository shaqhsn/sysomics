require 'spec_helper'

describe "data_processings/show" do
  before(:each) do
    @data_processing = assign(:data_processing, stub_model(DataProcessing,
      :data_processing_type_id => 1,
      :software_id => "",
      :data_set_id => 2,
      :file_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
