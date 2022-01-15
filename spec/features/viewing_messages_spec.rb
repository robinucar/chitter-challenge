feature 'wieving all messages' do
    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content 'Hello everyone.'
      expect(page).to have_content 'I am codding!'
    end
end