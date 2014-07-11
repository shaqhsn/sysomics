require 'spec_helper'

describe "assets/index" do
  before(:each) do
    assign(:assets, [
      stub_model(Asset,
        :user_id => 1
      ),
      stub_model(Asset,
        :user_id => 1
      )
    ])
  end

  it "renders a list of assets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
