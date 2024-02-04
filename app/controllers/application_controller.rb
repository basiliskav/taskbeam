class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = :el # or params[:locale] if you want to set it dynamically
  end
end
