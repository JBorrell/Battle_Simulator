# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
#
# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation

feature 'Player 1 attacks player 2' do
  scenario 'confirms player 2 has been attacked' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Johnny Cash attacks Timmy Jones for 5 damage!'
  end

  scenario 'confirms player 1 has been attacked' do
    sign_in_and_play
    attack_and_continue
    click_link('Attack!')
    expect(page).to have_content 'Timmy Jones attacks Johnny Cash for 5 damage!'
  end

  scenario 'Player 1 can heal instead of attacking' do
    sign_in_and_play
    attack_and_continue
    attack_and_continue
    click_button('Heal!')
    expect(page).to have_content('Johnny Cash has increased his health by 10!')
  end
end
