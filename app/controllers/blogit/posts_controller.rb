require_dependency Blogit::Engine.root.join('app', 'controllers', 'blogit', 'posts_controller').to_s
module Blogit
  class PostsController
    def create
      @post = current_blogger.blog_posts.new(params[:post])
      if @post.save
        #saving the blog post text as a text file to the local storage
        begin
          file = File.open("#{Rails.root}/tmp/#{@post.id}_#{@post.title}.txt", "w")
          file.write(@post.body)
        rescue IOError => e
          #some error occur, dir not writable etc.
        ensure
          file.close unless file == nil
        end
        redirect_to @post, notice: t(:blog_post_was_successfully_created, scope: 'blogit.posts')
      else
        render action: "new"
      end
    end
  end
end