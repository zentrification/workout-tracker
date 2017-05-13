class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  # allow use of sizzy
  before_action do
    response.headers.delete "X-Frame-Options"
  end
end
