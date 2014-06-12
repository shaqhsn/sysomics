require 'spec_helper'

describe "software_parameters/show" do
  before(:each) do
    @software_parameter = assign(:software_parameter, stub_model(SoftwareParameter,
      :name => "Name",
      :value => "Value",
      :software_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Value/)
    rendered.should match(/1/)
  end
end
