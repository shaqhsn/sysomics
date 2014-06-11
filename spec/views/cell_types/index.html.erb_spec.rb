require 'spec_helper'

describe "cell_types/index" do
  before(:each) do
    assign(:cell_types, [
      stub_model(CellType,
        :name => "Name"
      ),
      stub_model(CellType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of cell_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
