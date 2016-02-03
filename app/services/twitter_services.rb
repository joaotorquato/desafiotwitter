class TwitterServices
  attr_reader :client
  RADIUS = '1km'
  def initialize(lat, long)
    @lat = lat
    @long = long
    @client = TwitterFactory.build
  end

  def search
    @search ||= client.search(nil, geocode:"#{@lat},#{@long},#{RADIUS}").attrs[:statuses]
  end

  def first
    search.first
  end

  def last
    binding.pry
    last_tweet = search.last
    while last = last_search(last_tweet)
      break if last[:id] == last_tweet[:id]
      last_tweet = last
      puts last_tweet[:id]
    end
    last_tweet
  end

  def last_search(last_tweet)
    client.search(nil, geocode:"#{@lat},#{@long},#{RADIUS}", max_id: last_tweet[:id]).attrs[:statuses].last
  end

end
