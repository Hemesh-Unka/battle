feature 'Show hitpoints' do
  scenario 'View hitpoints' do
    sign_in_and_play
    expect(page).to have_css('input#p2-health')
  end
end
