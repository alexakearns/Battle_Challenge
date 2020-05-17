def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: "Nigel"
  fill_in 'player_2', with: "Colin"
  click_on 'ENTER'
end