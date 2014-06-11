require 'spec_helper'

describe "tissues/index" do
  before(:each) do
    assign(:tissues, [
      stub_model(Tissue,
        :name => "Name"
      ),
      stub_model(Tissue,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tissues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
