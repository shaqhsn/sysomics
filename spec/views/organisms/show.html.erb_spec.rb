require 'spec_helper'

describe "organisms/show" do
  before(:each) do
    @organism = assign(:organism, stub_model(Organism,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
