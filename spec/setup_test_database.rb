require 'pg'
def setup_test_database
p 'Setting up test database...' 

connection = PG.connect(dbname: 'chitter_app_test')
#	clear messages table
connection.exec('TRUNCATE messages;')
end
