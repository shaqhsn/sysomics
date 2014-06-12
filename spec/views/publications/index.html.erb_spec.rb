require 'spec_helper'

describe "publications/index" do
  before(:each) do
    assign(:publications, [
      stub_model(Publication,
        :public_repository_id => 1,
        :DOI => "Doi"
      ),
      stub_model(Publication,
        :public_repository_id => 1,
        :DOI => "Doi"
      )
    ])
  end

  it "renders a list of publications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Doi".to_s, :count => 2
  end
end
