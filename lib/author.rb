 require "pry"
 class Author

    attr_accessor :name
    def initialize(name)
        @name = name
        @posts = []
    end
def add_post(post)
        @posts << post
        post.author = self
        #binding.pry
    end
    def posts
        Post.all.select {|post| post.author = self} 
        #binding.pry
       end
       #binding.pry
end