require 'spec_helper'

describe "publications/new" do
  before(:each) do
    assign(:publication, stub_model(Publication,
      :public_repository_id => 1,
      :DOI => "MyString"
    ).as_new_record)
  end

  it "renders new publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", publications_path, "post" do
      assert_select "input#publication_public_repository_id[name=?]", "publication[public_repository_id]"
      assert_select "input#publication_DOI[name=?]", "publication[DOI]"
    end
  end
end
