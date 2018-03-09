feature 'Restart game' do
  scenario 'at end of game, allow user to restart game' do
    sign_in_and_play
    9.times do
      click_button('Attack Fake P2')
      click_button('Attack Fake P1')
    end
    click_button('Attack Fake P2')

    click_button('Play Again')
    expect(page).to have_selector("input[type=text][placeholder='Player 1 Name']")
  end
end
