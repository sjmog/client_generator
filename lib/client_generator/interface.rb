require 'thor'

module ClientGenerator
  class Interface < Thor
    include Thor::Actions
    CLIENT_DIR = $TESTING ? $TEST_DIR : 'lib'

    desc "generate CLIENTNAME", "generate a client called CLIENTNAME"
    def generate(client)
      puts 'Generating...'
      create_file "#{CLIENT_DIR}/#{client.underscore}.rb", "# Add initialization content here"
    end
  end
end