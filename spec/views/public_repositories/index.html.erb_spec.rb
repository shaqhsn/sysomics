require 'spec_helper'

describe "public_repositories/index" do
  before(:each) do
    assign(:public_repositories, [
      stub_model(PublicRepository,
        :name => "Name",
        :url => "Url",
        :record_id => "Record"
      ),
      stub_model(PublicRepository,
        :name => "Name",
        :url => "Url",
        :record_id => "Record"
      )
    ])
  end

  it "renders a list of public_repositories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Record".to_s, :count => 2
  end
end
