feature 'attack other player' do
  scenario 'player can attack and get confirmation' do
    sign_in_and_play
    click_on "START GAME"
    click_on "ATTACK"
    expect(page).to have_content 'Nigel attacked Colin'
  end
end