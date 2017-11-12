class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #this validates that name will be entered so that the virtual attribute method will work and not throw an error if the user leaves blank
  validates_presence_of :name

  #Virtual Attributes
  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end
