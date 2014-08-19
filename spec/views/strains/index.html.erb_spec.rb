require 'spec_helper'

describe "strains/index" do
  before(:each) do
    assign(:strains, [
      stub_model(Strain,
        :name => "Name"
      ),
      stub_model(Strain,
        :name => "Name"
      )
    ])
  end

  it "renders a list of strains" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
