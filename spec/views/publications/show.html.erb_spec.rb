require 'spec_helper'

describe "publications/show" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :public_repository_id => 1,
      :DOI => "Doi"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Doi/)
  end
end
