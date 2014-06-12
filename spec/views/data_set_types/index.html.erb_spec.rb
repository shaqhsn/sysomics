require 'spec_helper'

describe "data_set_types/index" do
  before(:each) do
    assign(:data_set_types, [
      stub_model(DataSetType,
        :name => "Name"
      ),
      stub_model(DataSetType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of data_set_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
