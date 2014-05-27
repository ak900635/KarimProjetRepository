require 'spec_helper'

describe "chapitres/new" do
  before(:each) do
    assign(:chapitre, stub_model(Chapitre,
      :name => "MyString",
      :numero => 1
    ).as_new_record)
  end

  it "renders new chapitre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapitres_path, "post" do
      assert_select "input#chapitre_name[name=?]", "chapitre[name]"
      assert_select "input#chapitre_numero[name=?]", "chapitre[numero]"
    end
  end
end
