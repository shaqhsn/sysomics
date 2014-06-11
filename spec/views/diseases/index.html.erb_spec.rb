require 'spec_helper'

describe "diseases/index" do
  before(:each) do
    assign(:diseases, [
      stub_model(Disease,
        :name => "Name"
      ),
      stub_model(Disease,
        :name => "Name"
      )
    ])
  end

  it "renders a list of diseases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
