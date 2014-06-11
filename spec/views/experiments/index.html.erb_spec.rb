require 'spec_helper'

describe "experiments/index" do
  before(:each) do
    assign(:experiments, [
      stub_model(Experiment,
        :name => "Name",
        :comment => "Comment",
        :description => "Description"
      ),
      stub_model(Experiment,
        :name => "Name",
        :comment => "Comment",
        :description => "Description"
      )
    ])
  end

  it "renders a list of experiments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
