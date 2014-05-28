require 'spec_helper'

describe "Anecdotes" do
   it "should have the content 'Listing  anecdotes'" do
      visit '/anecdotes'
      expect(page).to have_content('Listing anecdotes')
  end
end
