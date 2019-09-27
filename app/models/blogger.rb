class Blogger < ApplicationRecord

    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

    
    #The total likes on all of that blogger's posts
    #A link to that blogger's featured post (the post with the most likes)
    #BONUS A list of that user's top 5 most written about destinations (the destinations with the most posts)
    def total_likes
        self.posts.map {|post| post.likes}.sum
    end

    def featured_post
        @post = self.posts.map {|post| post.likes}.sort.last
    end

    # def top_5
    #     destinations = []
    #     self.posts.map {|post| post.destination}.sort_by(destinations())
    #         destinations << destination.

    # end


end
