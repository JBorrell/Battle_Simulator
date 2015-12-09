# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Attack opponent' do
  scenario 'confirms player 2 has been attacked' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Timmy Jones has been attacked by Johnny Cash!'
  end
end
