class User < ActiveRecord::Base
	has_many :ownerships
	has_many :games, through: :ownerships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
