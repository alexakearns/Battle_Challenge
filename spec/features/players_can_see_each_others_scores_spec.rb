feature 'players can see each others scores' do
  scenario 'players can see each others scores' do
    visit '/'
    fill_in 'player_1', with: "Nigel"
    fill_in 'player_2', with: "Colin"
    click_on 'ENTER'
    click_on 'START GAME'
    expect(page).to have_content 'Nigel - 100'
    expect(page).to have_content 'Colin - 100'
  end
end