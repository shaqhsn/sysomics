require 'spec_helper'

describe "tissues/show" do
  before(:each) do
    @tissue = assign(:tissue, stub_model(Tissue,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
