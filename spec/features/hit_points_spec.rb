feature 'Show hitpoints' do
  scenario 'View hitpoints' do
    sign_in_and_play
    expect(page).to have_css('div#p2-health-bar')
  end
end
