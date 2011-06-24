PadrinoTestApp.controllers :posts do

  get :index do
    @title = 'Posts index'
    @posts = Post.recent_posts
    render 'posts/index'
  end

  get :show, :with => :id do
    @post = Post.get(params[:id])
    @title = @post.title
    render 'posts/show'
  end

end