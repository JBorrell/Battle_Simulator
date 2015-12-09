# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Show hit points' do
  scenario 'allows players to see each other\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Johnny Cash: 60HP'
  end
end
