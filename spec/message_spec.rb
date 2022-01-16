require 'message'
describe Message do
  describe '.all' do
    it 'returns all messages' do
      connection = PG.connect(dbname: 'chitter_app_test')

      connection.exec("INSERT INTO messages (msg) VALUES ('Hello everyone.');")
      connection.exec("INSERT INTO messages (msg) VALUES ('I am coding!');")

      messages = Message.all

      expect(messages).to include ('Hello everyone.')
      expect(messages).to include('I am coding!')
    end
  end

  describe '.create' do
    it 'creates a new message' do
      Message.create(message: 'This is my first message.')
      expect(Message.all).to include 'This is my first message.'
    end
  end
end

