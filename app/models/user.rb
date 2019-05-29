class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  dragonfly_accessor :image
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :boss_logs, dependent: :destroy
  has_many :bosses, through: :boss_logs

  def remember_me
    true
  end
end
