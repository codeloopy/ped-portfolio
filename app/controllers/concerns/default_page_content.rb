module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_default
  end

  def set_page_default
    @page_title = "PedPortfolio Site"
    @seo_keywords = "Pedro Monsalve portfolio website motion graphics, video editing, mutimedia design, programming, computer"
  end
end
