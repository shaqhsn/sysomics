require 'spec_helper'

describe "data_sets/index" do
  before(:each) do
    assign(:data_sets, [
      stub_model(DataSet,
        :data_set_type_id => 1,
        :project_id => 2,
        :name => "Name",
        :comment => "Comment",
        :file_id => 3
      ),
      stub_model(DataSet,
        :data_set_type_id => 1,
        :project_id => 2,
        :name => "Name",
        :comment => "Comment",
        :file_id => 3
      )
    ])
  end

  it "renders a list of data_sets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
