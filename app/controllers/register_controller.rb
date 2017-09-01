get '/register' do
  erb :"register/index"
end

post '/register' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/login'
  else
    @errors = @user.errors.full_messages
    erb :"register/index"
  end
end
