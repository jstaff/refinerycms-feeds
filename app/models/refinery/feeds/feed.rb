module Refinery
  module Feeds
    class Feed < Refinery::Core::BaseModel
      self.table_name = 'refinery_feeds'

      attr_accessible :title, :link_url, :position, :position

      acts_as_indexed :fields => [:title, :link_url]

      validates :title, :presence => true, :uniqueness => true
    end

    def feedreader

    	# fetching a single feed
		feed = Feedzirra::Feed.fetch_and_parse("http://feeds.feedburner.com/PaulDixExplainsNothing")

    end
  end
end
