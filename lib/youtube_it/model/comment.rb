class YouTubeIt
  module Model
    class Comment < YouTubeIt::Record
      attr_reader :content
      attr_reader :published
      attr_reader :reply_count
      attr_reader :title
      attr_reader :updated
      attr_reader :url

      # YouTubeIt::Model::Author:: Information about the YouTube user who owns a piece of video content.
      attr_reader :author
      attr_reader :channel_id
      attr_reader :gp_user_id

      # unique ID of the comment.
      def unique_id
        url.split(":").last
      end
    end
  end
end

