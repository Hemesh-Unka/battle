require 'spec_helper.rb'

def sign_in_and_play
  visit('/')
  fill_in('p1_name', with: 'Fake P1')
  fill_in('p2_name', with: 'Fake P2')
  click_button('Submit')
end
