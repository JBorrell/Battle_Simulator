# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

feature 'Show hit points' do
  scenario 'allows player 1 to see players 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Timmy Jones: 60 HP'
  end
  scenario 'allows player 2 to see players 1\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Johnny Cash: 60 HP'
  end
end
