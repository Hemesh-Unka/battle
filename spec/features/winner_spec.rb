feature 'Produce winner name' do
  scenario 'P1 beats P2' do
    sign_in_and_play
    9.times do
      click_button('Attack Fake P2')
      click_button('Attack Fake P1')
    end
    click_button('Attack Fake P2')

    expect(page).to have_content('FAKE P1 WINS!')
  end
end
