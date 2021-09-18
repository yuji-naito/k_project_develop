class ApplicationController < ActionController::Base
  include Front::SessionsHelper
  before_action :logged_in_user
end
