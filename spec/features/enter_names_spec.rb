feature 'Enter names' do
  scenario 'Submit names' do
    visit('/')
    fill_in('player_1_name', with: 'Fake P1')
    fill_in('player_2_name', with: 'Fake P2')
    click_button('Submit')
    expect(page).to have_content('Fake P1 vs. Fake P2')
  end
end
