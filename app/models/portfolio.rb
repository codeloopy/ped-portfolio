class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  # Custom Scope then it can be called from the controller to separate the logic from the controller
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')} #LAMBDA
end
