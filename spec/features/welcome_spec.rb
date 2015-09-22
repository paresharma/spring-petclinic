require 'spec_helper'

RSpec.feature 'Home page', type: :feature, js: true do
  before { visit '/petclinic' }

  it { expect(page).to match_expectation }
end
