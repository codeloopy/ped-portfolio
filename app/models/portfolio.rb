class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  # Custom Scope then it can be called from the controller to separate the logic from the controller
  scope :ruby_on_rails, -> {where(subtitle: 'Ruby on Rails')} #LAMBDA

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/350x200"
    self.thumb_image ||= "http://via.placeholder.com/600x400"
  end
end
