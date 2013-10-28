require 'spec_helper'

describe 'locale' do

  it "has default locale" do
    I18n.locale = I18n.default_locale
    visit root_path
    expect(page).to have_css('#locale-icon.en')
  end

  it "can change locale" do
    visit root_path
    click_link('locale-icon')
    expect(page).to have_content('Choose Your Language')
    click_link 'Español'
    expect(current_url).to include('?locale=es')
    expect(page).to have_css('#locale-icon.es')
  end

end
