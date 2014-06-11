require 'spec_helper'

describe "experiment_details/index" do
  before(:each) do
    assign(:experiment_details, [
      stub_model(ExperimentDetail,
        :sample_id => 1,
        :platform_id => 2,
        :protocol_id => 3,
        :disease_id => 4,
        :experiment_id => 5
      ),
      stub_model(ExperimentDetail,
        :sample_id => 1,
        :platform_id => 2,
        :protocol_id => 3,
        :disease_id => 4,
        :experiment_id => 5
      )
    ])
  end

  it "renders a list of experiment_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
