module Refinery
  module Feeds
    module Admin
      class FeedsController < ::Refinery::AdminController

        crudify :'refinery/feeds/feed', :xhr_paging => true

      end
    end
  end
end
