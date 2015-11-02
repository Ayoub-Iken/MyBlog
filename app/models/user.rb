class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save { self.email = email.downcase }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :firstname, presence: true, length: {maximum: 20}
  validates :lastname, presence: true, length: {maximum: 20}
end
