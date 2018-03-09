feature 'Produce winner name' do
  scenario 'P1 beats P2' do
    sign_in_and_play
    10.times do
      click_button('Attack Fake P2')
      click_button('Attack Fake P1')
    end

    expect(page).to have_content('FAKE P2 WINS!')
  end
end
