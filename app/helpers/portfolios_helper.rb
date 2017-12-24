module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img(img, type)
    # byebug
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    else
      image_generator(height: '350', width: '200')
    end
  end
end
