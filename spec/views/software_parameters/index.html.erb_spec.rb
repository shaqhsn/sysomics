require 'spec_helper'

describe "software_parameters/index" do
  before(:each) do
    assign(:software_parameters, [
      stub_model(SoftwareParameter,
        :name => "Name",
        :value => "Value",
        :software_id => 1
      ),
      stub_model(SoftwareParameter,
        :name => "Name",
        :value => "Value",
        :software_id => 1
      )
    ])
  end

  it "renders a list of software_parameters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
