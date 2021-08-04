class ApplicationController < ActionController::Base
  include Pundit, Pagy::Backend
  extend Lettable

  def current_user
    nil
  end
end
