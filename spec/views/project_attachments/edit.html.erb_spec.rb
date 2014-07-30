require 'spec_helper'

describe "project_attachments/edit" do
  before(:each) do
    @project_attachment = assign(:project_attachment, stub_model(ProjectAttachment,
      :project_id => 1,
      :attachment => "MyString"
    ))
  end

  it "renders the edit project_attachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_attachment_path(@project_attachment), "post" do
      assert_select "input#project_attachment_project_id[name=?]", "project_attachment[project_id]"
      assert_select "input#project_attachment_attachment[name=?]", "project_attachment[attachment]"
    end
  end
end
