feature 'Attack player' do
  scenario 'reduce player 2 hp by 10 points' do
    sign_in_and_play
    click_button('Attack Fake P2')
    expect(page).to have_field('p2_health', with: '90')
  end
end
