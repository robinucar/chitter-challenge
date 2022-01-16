require 'pg'
class Messages
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_app_test')
    else
      connection = PG.connect(dbname: 'chitter_app')
    end
    result = connection.exec('SELECT * FROM messages')
    result.map { |message| message['msg'] }
  end
end
