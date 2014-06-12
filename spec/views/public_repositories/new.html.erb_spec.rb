require 'spec_helper'

describe "public_repositories/new" do
  before(:each) do
    assign(:public_repository, stub_model(PublicRepository,
      :name => "MyString",
      :url => "MyString",
      :record_id => "MyString"
    ).as_new_record)
  end

  it "renders new public_repository form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", public_repositories_path, "post" do
      assert_select "input#public_repository_name[name=?]", "public_repository[name]"
      assert_select "input#public_repository_url[name=?]", "public_repository[url]"
      assert_select "input#public_repository_record_id[name=?]", "public_repository[record_id]"
    end
  end
end
