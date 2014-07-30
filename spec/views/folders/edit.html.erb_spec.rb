require 'spec_helper'

describe "folders/edit" do
  before(:each) do
    @folder = assign(:folder, stub_model(Folder,
      :name => "MyString",
      :parent_id => 1,
      :project_id => 1
    ))
  end

  it "renders the edit folder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", folder_path(@folder), "post" do
      assert_select "input#folder_name[name=?]", "folder[name]"
      assert_select "input#folder_parent_id[name=?]", "folder[parent_id]"
      assert_select "input#folder_project_id[name=?]", "folder[project_id]"
    end
  end
end
