class Post < ApplicationRecord

    belongs_to :blogger
    belongs_to :destination
    validates :title, presence: true
    validates :content, length: {minimum: 100}

    def like
        self.likes += 1
    end

end


# A post should have a title
# A post should have content longer than 100 characters