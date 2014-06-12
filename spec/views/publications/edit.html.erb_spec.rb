require 'spec_helper'

describe "publications/edit" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :public_repository_id => 1,
      :DOI => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do
      assert_select "input#publication_public_repository_id[name=?]", "publication[public_repository_id]"
      assert_select "input#publication_DOI[name=?]", "publication[DOI]"
    end
  end
end
