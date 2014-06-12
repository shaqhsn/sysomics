require 'spec_helper'

describe "public_repositories/edit" do
  before(:each) do
    @public_repository = assign(:public_repository, stub_model(PublicRepository,
      :name => "MyString",
      :url => "MyString",
      :record_id => "MyString"
    ))
  end

  it "renders the edit public_repository form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", public_repository_path(@public_repository), "post" do
      assert_select "input#public_repository_name[name=?]", "public_repository[name]"
      assert_select "input#public_repository_url[name=?]", "public_repository[url]"
      assert_select "input#public_repository_record_id[name=?]", "public_repository[record_id]"
    end
  end
end
