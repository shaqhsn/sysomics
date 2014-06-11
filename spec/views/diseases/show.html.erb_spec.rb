require 'spec_helper'

describe "diseases/show" do
  before(:each) do
    @disease = assign(:disease, stub_model(Disease,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
