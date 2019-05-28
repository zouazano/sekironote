class Boss < ApplicationRecord
	dragonfly_accessor :image

  has_many :boss_logs, dependent: :destroy
  has_many :users, through: :boss_logs
end
