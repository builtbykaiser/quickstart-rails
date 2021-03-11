class ApplicationController < ActionController::Base
  include Pundit, Pagy::Backend
  extend Lettable
end
