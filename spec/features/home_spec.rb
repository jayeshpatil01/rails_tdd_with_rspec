require 'rails_helper'

RSpec.describe 'Home features', type: :feature do
  it 'displays the name of the app and links to the About page' do
    visit('/')
    expect(page).to have_content('Game Tracker')
    click_link('About')
    expect(current_path).to eq('/about')
    expect(page).to have_content('About')
  end
end