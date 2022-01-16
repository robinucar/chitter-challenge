require 'messages'
describe Messages do
  describe '.all' do
    it 'returns all messages' do
      connection = PG.connect(dbname: 'chitter_app_test')

      connection.exec("INSERT INTO messages (msg) VALUES ('Hello everyone.');")
      connection.exec("INSERT INTO messages (msg) VALUES ('I am coding!');")

      messages = Messages.all

      expect(messages).to include ('Hello everyone.')
      expect(messages).to include('I am coding!')
    end
  end
end
