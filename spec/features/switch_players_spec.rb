feature 'Switch turns' do
  scenario 'at the start of the game, see whos turn it is' do
    sign_in_and_play
    expect(page).to have_button('Attack P2')
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button('Attack P2')
    expect(page).not_to have_button('Attack P2')
    expect(page).to have_button('Attack P1')
  end
end
