class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery prepend: true

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = PedsViewTool::Renderer.copyright('Pedro Monsalve', 'All Rights Reserved')
  end

  module PedsViewTool
    class Renderer
      def self.copyright(name, msg)
        "&copy; #{Time.now.year} | <strong>#{name}, #{msg}</strong>".html_safe
      end
    end
  end


end
