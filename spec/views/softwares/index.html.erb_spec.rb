require 'spec_helper'

describe "softwares/index" do
  before(:each) do
    assign(:softwares, [
      stub_model(Software,
        :name => "Name",
        :version => "Version"
      ),
      stub_model(Software,
        :name => "Name",
        :version => "Version"
      )
    ])
  end

  it "renders a list of softwares" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Version".to_s, :count => 2
  end
end
