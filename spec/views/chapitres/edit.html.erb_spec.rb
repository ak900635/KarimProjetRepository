require 'spec_helper'

describe "chapitres/edit" do
  before(:each) do
    @chapitre = assign(:chapitre, stub_model(Chapitre,
      :name => "MyString",
      :numero => 1
    ))
  end

  it "renders the edit chapitre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapitre_path(@chapitre), "post" do
      assert_select "input#chapitre_name[name=?]", "chapitre[name]"
      assert_select "input#chapitre_numero[name=?]", "chapitre[numero]"
    end
  end
end
