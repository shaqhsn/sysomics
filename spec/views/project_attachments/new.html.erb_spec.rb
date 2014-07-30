require 'spec_helper'

describe "project_attachments/new" do
  before(:each) do
    assign(:project_attachment, stub_model(ProjectAttachment,
      :project_id => 1,
      :attachment => "MyString"
    ).as_new_record)
  end

  it "renders new project_attachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_attachments_path, "post" do
      assert_select "input#project_attachment_project_id[name=?]", "project_attachment[project_id]"
      assert_select "input#project_attachment_attachment[name=?]", "project_attachment[attachment]"
    end
  end
end
