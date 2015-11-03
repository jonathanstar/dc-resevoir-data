get "/posts" do
  @posts = Post.order("created_at DESC")
  erb :'posts/index'
end

post "/posts" do
  params.to_s
  post = Post.new(params[:post])

  if post.save
    erb :"posts/_post", layout: false, locals: {post: post}
  else
    status 400
    erb :_errors, layout: false, locals: {object: post}
  end
end

get "/posts/new" do
  @post = Post.new
  erb :'posts/_form', layout: false, locals: {post: @post}
end

get "/posts/:id" do
  @post = Post.find(params[:id])
  erb :'posts/show'
end
