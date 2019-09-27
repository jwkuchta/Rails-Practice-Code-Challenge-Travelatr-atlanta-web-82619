class Destination < ApplicationRecord

    has_many :posts
    has_many :bloggers, through: :posts


    def featured_post
        self.posts.map {|post| post.likes}.sort.last
    end

    def recent_posts
        self.posts.sort_by(&:created_at).last(5)
    end

    def average_age
        self.bloggers.map {|blogger| blogger.age}.sum / self.bloggers.size
    end


end
