require 'rails_helper'

feature 'User enters the location' do
  scenario 'successfuly' do
    visit root_path

    fill_in 'latitude',   with: -23.5699546
    fill_in 'longitude',   with: -46.6560509

    click_on 'Get Tweets'

    expect(page).to have_content 'First Tweet'
    expect(page).to have_content 'Second Tweet'
  end
end
