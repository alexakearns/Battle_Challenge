feature 'Testing infrastructures' do
  scenario 'Runs app and checks page content' do
    visit ('/')
    expect(page).to have_content 'This page is working!'
  end
end