require 'spec_helper'

RSpec.feature 'Home page', js: true do
  before { visit '/petclinic' }

  it { expect(page).to match_reference_screenshot }
end
