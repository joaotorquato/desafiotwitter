class TwitterFactory
  def self.build
    Twitter::REST::Client.new do |config|
      config.consumer_key    = "769D3aBet6HERQU4EnO8abVFa"
      config.consumer_secret = "rpAjKSrNgmUSeKxiP7SJhTZVYhu9WdxqA2rga6EegWtWOHdnZe"
      config.access_token        = "27754317-hXZjKZspuuZoarmBQELgTBUnVOR9WqAeu32XKIhvc"
      config.access_token_secret = "dCTmScI128eNp7OjHlSeEHWr5DrP2kvqr3TTYQuY0cZth"
    end
  end
end
