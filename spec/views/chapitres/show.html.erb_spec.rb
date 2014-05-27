require 'spec_helper'

describe "chapitres/show" do
  before(:each) do
    @chapitre = assign(:chapitre, stub_model(Chapitre,
      :name => "Name",
      :numero => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
