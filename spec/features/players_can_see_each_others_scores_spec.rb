feature 'players can see each others scores' do
  scenario 'players can see each others scores' do
    visit '/'
    sign_in_and_play
    click_on 'START GAME'
    expect(page).to have_content 'Nigel - 100'
    expect(page).to have_content 'Colin - 100'
  end
end