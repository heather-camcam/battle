feature 'Fighting player' do

  scenario 'player_1 is going to attack player_2.' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Heather attacked Birthday!'
  end

  scenario 'HPs are reduced when attacked' do
    sign_in_and_play
    attack_and_play_again
    expect(page).to have_content 'Birthday: 58HP'
  end

  scenario 'HPs are reduced when attacked' do
    sign_in_and_play
    2.times {attack_and_play_again}
    expect(page).to have_content 'Heather: 58HP'
  end

end
