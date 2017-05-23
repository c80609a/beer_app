require 'database_cleaner'

RSpec.configure do |config|

  config.before(:suite) do
   puts '-----before suit'
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    puts '-----before each'
    DatabaseCleaner.start
  end

  config.after(:each) do
    puts '-----after each'
    DatabaseCleaner.clean
  end

end