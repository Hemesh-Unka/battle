feature 'Switch turns' do
  scenario 'at the start of the game, see whos turn it is' do
    sign_in_and_play
    expect(page).to have_button('Attack Fake P2')
  end
end
