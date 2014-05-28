require 'spec_helper'


describe "StaticPages" do

describe "Home page" do

  it "should have the content 'Assistant App" do
       visit '/static_pages/home'
expect(page).to have_content("Assistant App")
end
end

end