feature 'players can enter game' do
  scenario 'players can enter names and see them' do
    visit '/'
    fill_in 'player_1', with: "Nigel"
    fill_in 'player_2', with: "Colin"
    click_on 'ENTER'
    expect(page).to have_content("Nigel to battle Colin")
  end
end