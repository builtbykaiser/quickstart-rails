class ApplicationController < ActionController::Base
  include Pundit
  extend Lettable
end
