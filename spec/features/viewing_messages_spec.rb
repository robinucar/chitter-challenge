feature 'Viewing messages' do 
  scenario 'visiting the index page' do 
    visit('/')
    expect(page).to have_content 'hello world'
  end
end
