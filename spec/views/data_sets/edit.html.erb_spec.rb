require 'spec_helper'

describe "data_sets/edit" do
  before(:each) do
    @data_set = assign(:data_set, stub_model(DataSet,
      :data_set_type_id => 1,
      :project_id => 1,
      :name => "MyString",
      :comment => "MyString",
      :file_id => 1
    ))
  end

  it "renders the edit data_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_set_path(@data_set), "post" do
      assert_select "input#data_set_data_set_type_id[name=?]", "data_set[data_set_type_id]"
      assert_select "input#data_set_project_id[name=?]", "data_set[project_id]"
      assert_select "input#data_set_name[name=?]", "data_set[name]"
      assert_select "input#data_set_comment[name=?]", "data_set[comment]"
      assert_select "input#data_set_file_id[name=?]", "data_set[file_id]"
    end
  end
end
