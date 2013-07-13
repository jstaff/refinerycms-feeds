class CreateFeedsFeeds < ActiveRecord::Migration

  def up
    create_table :refinery_feeds do |t|
      t.string :title
      t.string :link_url
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-feeds"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/feeds/feeds"})
    end

    drop_table :refinery_feeds

  end

end
