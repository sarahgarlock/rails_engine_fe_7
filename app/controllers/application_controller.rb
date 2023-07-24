class ApplicationController < ActionController::Base
  def welcome
    render html: "Rails engine!"
  end
end
