require 'spec_helper'

describe "public_repositories/show" do
  before(:each) do
    @public_repository = assign(:public_repository, stub_model(PublicRepository,
      :name => "Name",
      :url => "Url",
      :record_id => "Record"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/Record/)
  end
end
