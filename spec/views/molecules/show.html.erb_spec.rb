require 'spec_helper'

describe "molecules/show" do
  before(:each) do
    @molecule = assign(:molecule, stub_model(Molecule,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
