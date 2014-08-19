require 'spec_helper'

describe "strains/show" do
  before(:each) do
    @strain = assign(:strain, stub_model(Strain,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
