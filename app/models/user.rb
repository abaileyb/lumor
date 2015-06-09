class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:user, :admin] #defaults to user
  has_many :comments
  has_many :ideas
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

