require 'spec_helper'

describe "Personnes" do
 
   it "should have the content 'Listing personnes'" do
      visit '/personnes'
      expect(page).to have_content('Listing personnes')
    end
end
