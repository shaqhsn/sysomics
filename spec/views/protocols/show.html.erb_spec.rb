require 'spec_helper'

describe "protocols/show" do
  before(:each) do
    @protocol = assign(:protocol, stub_model(Protocol,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
