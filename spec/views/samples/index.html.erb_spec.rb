require 'spec_helper'

describe "samples/index" do
  before(:each) do
    assign(:samples, [
      stub_model(Sample,
        :name => "Name",
        :title => "Title",
        :cell_type_id => 1,
        :tissue_id => 2,
        :organism_id => 3,
        :molecule_id => 4
      ),
      stub_model(Sample,
        :name => "Name",
        :title => "Title",
        :cell_type_id => 1,
        :tissue_id => 2,
        :organism_id => 3,
        :molecule_id => 4
      )
    ])
  end

  it "renders a list of samples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
