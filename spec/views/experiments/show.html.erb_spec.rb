require 'spec_helper'

describe "experiments/show" do
  before(:each) do
    @experiment = assign(:experiment, stub_model(Experiment,
      :name => "Name",
      :comment => "Comment",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Comment/)
    rendered.should match(/Description/)
  end
end
