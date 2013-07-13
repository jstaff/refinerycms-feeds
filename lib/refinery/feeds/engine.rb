module Refinery
  module Feeds
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Feeds

      engine_name :refinery_feeds

      initializer "register refinerycms_feeds plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "feeds"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.feeds_admin_feeds_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/feeds/feed'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Feeds)
      end
    end
  end
end
