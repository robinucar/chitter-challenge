require 'pg'
feature 'wieving all messages' do
  scenario 'visiting the index page' do
    connection = PG.connect(dbname: 'chitter_app_test')

    connection.exec("INSERT INTO messages (msg) VALUES ('Hello everyone.');")
    connection.exec("INSERT INTO messages (msg) VALUES ('I am coding!');")

    visit('/messages')

    expect(page).to have_content 'Hello everyone.'
    expect(page).to have_content 'I am coding!'
  end
end
