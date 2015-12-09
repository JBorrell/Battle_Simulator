# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

feature 'Reduce hit points' do
  scenario 'reduces HP after an attack' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Timmy Jones: 50 hp'
  end
end
