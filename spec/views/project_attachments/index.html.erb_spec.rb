require 'spec_helper'

describe "project_attachments/index" do
  before(:each) do
    assign(:project_attachments, [
      stub_model(ProjectAttachment,
        :project_id => 1,
        :attachment => "Attachment"
      ),
      stub_model(ProjectAttachment,
        :project_id => 1,
        :attachment => "Attachment"
      )
    ])
  end

  it "renders a list of project_attachments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Attachment".to_s, :count => 2
  end
end
