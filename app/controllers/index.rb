get '/user/new ' do
  erb :signup
end

post '/user' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = @user.id
    redirect '/login'
  else
    @errors = user.errors.full_messages
    erb :signup
  end
end
