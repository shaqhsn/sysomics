require 'spec_helper'

describe "molecules/index" do
  before(:each) do
    assign(:molecules, [
      stub_model(Molecule,
        :name => "Name"
      ),
      stub_model(Molecule,
        :name => "Name"
      )
    ])
  end

  it "renders a list of molecules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
