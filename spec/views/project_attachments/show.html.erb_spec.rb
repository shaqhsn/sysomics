require 'spec_helper'

describe "project_attachments/show" do
  before(:each) do
    @project_attachment = assign(:project_attachment, stub_model(ProjectAttachment,
      :project_id => 1,
      :attachment => "Attachment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Attachment/)
  end
end
