require 'spec_helper'

describe "samples/edit" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :name => "MyString",
      :title => "MyString",
      :cell_type_id => 1,
      :tissue_id => 1,
      :organism_id => 1,
      :molecule_id => 1
    ))
  end

  it "renders the edit sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sample_path(@sample), "post" do
      assert_select "input#sample_name[name=?]", "sample[name]"
      assert_select "input#sample_title[name=?]", "sample[title]"
      assert_select "input#sample_cell_type_id[name=?]", "sample[cell_type_id]"
      assert_select "input#sample_tissue_id[name=?]", "sample[tissue_id]"
      assert_select "input#sample_organism_id[name=?]", "sample[organism_id]"
      assert_select "input#sample_molecule_id[name=?]", "sample[molecule_id]"
    end
  end
end
