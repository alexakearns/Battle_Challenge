feature 'players switch turns' do
  scenario 'defaults to player one to play first' do
    sign_in_and_play
    click_on 'START GAME'
    expect(page).to have_content 'Nigel\'s turn'
  end

  scenario 'after first player goes, switches to second player' do
    sign_in_and_play
    click_on 'START GAME'
    click_on 'ATTACK'
    expect(page).to have_content 'Colin\'s turn'
  end
end