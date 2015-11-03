get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  params.to_s
  @post = Post.new(params[:post])

  if @post.save
    erb :"posts/_form"
  end
end

get "/posts/new" do
  @post = Post.new
  erb :'posts/new', layout: false
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  erb :'posts/show'
end
