feature 'Enter names' do
  scenario 'Submit names' do
    sign_in_and_play
    expect(page).to have_content('Fake P1')
    expect(page).to have_content('Fake P2')
  end
end
