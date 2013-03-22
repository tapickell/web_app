class BlogController < ApplicationController
  
  def index
    @blog = Blog.new
    post_test_blog_1
    post_test_blog_2
  end
  
  def post_test_blog_1
    post1 = @blog.new_post title: "Paint just applied", body: "Paint just applied it's a lovely orangey-purple! Is that even a color?"
    post1.publish
  end
  
  def post_test_blog_2
    post2 = @blog.new_post title: "Still wet", body: "Paint is still quite wet. No bubbling yet!"
    post2.publish
  end 
end
