require 'pg'
class Message
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_app_test')
    else
      connection = PG.connect(dbname: 'chitter_app')
    end
    result = connection.exec('SELECT * FROM messages')
    result.map { |message| message['msg'] }
  end

  def self.create(message:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_app_test')
    else
      connection = PG.connect(dbname: 'chitter_app')
      p connection
    end

    connection.exec("INSERT INTO messages (msg) VALUES('#{message}')")
  end
end
