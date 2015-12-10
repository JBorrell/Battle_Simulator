def sign_in_and_play
  visit '/'
  fill_in(:player_1_name, with: 'Johnny Cash')
  fill_in(:player_2_name, with: 'Timmy Jones')
  click_button('Submit')
end

def attack_and_continue
  click_link('Attack!')
  click_link('Continue')
end
