feature 'attack reduces opposition hit points by 10' do
  scenario 'player 1 attacks player 2 and reduces hp by 10' do
    sign_in_and_play
    click_on 'START GAME'
    click_on 'ATTACK'
    expect(page).not_to have_content 'Colin - 100 HP'
    expect(page).to have_content 'Colin - 90 HP'
    expect(page).to have_content 'Nigel - 100 HP'
  end
end
