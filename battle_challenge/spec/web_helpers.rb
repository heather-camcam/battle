def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Heather'
  fill_in :player_2, with: 'Birthday'
  click_button 'Submit'
end

def attack_and_play_again
  click_button 'Attack!'
  click_button 'Play again!'
end
