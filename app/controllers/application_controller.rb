class ApplicationController < ActionController::Base

  def omniauth
    @user = User.find_or_create_by(uid: request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider]) do |u|
    u.username = request.env['omniauth.auth'][:info][:first_name]
    u.email = request.env['omniauth.auth'][:info][:email]
    u.password = SecureRandom.hex(15)
  end
end
