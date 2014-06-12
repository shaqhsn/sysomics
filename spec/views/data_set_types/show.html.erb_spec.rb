require 'spec_helper'

describe "data_set_types/show" do
  before(:each) do
    @data_set_type = assign(:data_set_type, stub_model(DataSetType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
