require_relative "../models/fakeTable"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
