feature 'players can enter game' do
  scenario 'players can enter names and see them' do
    sign_in_and_play
    expect(page).to have_content("Nigel to battle Colin")
  end
end