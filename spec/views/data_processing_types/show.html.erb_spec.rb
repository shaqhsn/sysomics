require 'spec_helper'

describe "data_processing_types/show" do
  before(:each) do
    @data_processing_type = assign(:data_processing_type, stub_model(DataProcessingType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
