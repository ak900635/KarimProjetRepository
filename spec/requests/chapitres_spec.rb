require 'spec_helper'

describe "Chapitres" do

  
  it "should have the content 'Listing  chapitres'" do
      visit '/chapitres'
      expect(page).to have_content('Listing  chapitres')
    end


end
