require 'messages'
describe Messages do
  describe '.all' do
    it 'returns all messages' do
      messages = Messages.all

      expect(messages).to include ('Hello everyone.')
      expect(messages).to include('I am codding!')
    end
  end
end
