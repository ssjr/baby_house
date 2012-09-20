# Encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  before_filter do
    @about_pages = Page.where(category_id: Category.where(name: "Sobre a Baby House"))
    @pedagogy_pages = Page.where(category_id: Category.where(name: "Pedagogia para a vida"))
    @portal_pages = Page.where(category_id: Category.where(name: "Portal das famílias"))
  end

  protected
  def set_locale
    I18n.locale = :"pt-BR"
  end
  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end
end

