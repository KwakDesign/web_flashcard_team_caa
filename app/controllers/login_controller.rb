get '/' do
  redirect "/login"
end

get '/login' do
  erb :"sessions/index"
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/decks"
  else
    status 422
    @errors = @user.errors.full_messages
    erb :"sessions/index"
  end
end
