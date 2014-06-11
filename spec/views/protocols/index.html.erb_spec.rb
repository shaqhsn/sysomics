require 'spec_helper'

describe "protocols/index" do
  before(:each) do
    assign(:protocols, [
      stub_model(Protocol,
        :name => "Name"
      ),
      stub_model(Protocol,
        :name => "Name"
      )
    ])
  end

  it "renders a list of protocols" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
