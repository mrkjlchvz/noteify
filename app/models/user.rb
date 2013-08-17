class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :notes, dependent: :destroy

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email,  :username, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
