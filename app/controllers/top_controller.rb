class TopController < ApplicationController
  def index
  	Boss.all.each do |boss|
  		@death_counts = []
	    boss.update(death_counts: BossLog.where(boss_id:boss.id).where(lap: 1).average(:death_count)&.round(1))
  	end
  end
end
