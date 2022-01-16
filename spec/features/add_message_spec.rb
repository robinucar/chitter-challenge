feature 'Adding a new message' do
  scenario 'An user can add a message' do
    visit '/messages/new'
    fill_in('message', with: 'This is my first message.')
    click_button('Send')

    expect(page).to have_content 'This is my first message.'
  end
end
