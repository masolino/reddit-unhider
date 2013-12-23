class RedditUnhider
  def self.unhide(username, password)
    client = authenticate_client username, password
    contents = client.my_content :category => 'hidden'

    contents.each do |content|
      client.unhide content
      puts "Unhide: #{ content.title }"
    end

    message = contents.any? ? %(Unhided #{ contents.count } posts.) : "No hidden posts found."
    puts message
  end

  protected
  def self.authenticate_client(username, password)
    RedditKit::Client.new username, password
  end
end