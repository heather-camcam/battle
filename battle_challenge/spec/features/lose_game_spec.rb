require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Lose game' do

  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  scenario 'player sees a lose message if they reach 0HP first' do
    sign_in_and_play
    58.times {attack_and_play_again}
    click_button 'Attack!'
    expect(page).to have_content 'Birthday lost'
  end

end
