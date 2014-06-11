require 'spec_helper'

describe "experiment_details/show" do
  before(:each) do
    @experiment_detail = assign(:experiment_detail, stub_model(ExperimentDetail,
      :sample_id => 1,
      :platform_id => 2,
      :protocol_id => 3,
      :disease_id => 4,
      :experiment_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
