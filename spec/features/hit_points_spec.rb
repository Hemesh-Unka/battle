feature 'Show hitpoints' do
  scenario 'View hitpoints for player 1' do
    sign_in_and_play
    expect(page).to have_css('input#p1-health')
  end

  scenario 'View hitpoints for player 2' do
    sign_in_and_play
    expect(page).to have_css('input#p2-health')
  end
end
