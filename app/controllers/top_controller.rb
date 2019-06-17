class TopController < ApplicationController
  def index
  	Boss.all.each do |boss|
  		unless BossLog.where(boss_id:boss.id).where(lap: 1).average(:death_count)&.round(1).nil?
	      boss.update(average_death_counts: BossLog.where(boss_id:boss.id).where(lap: 1).average(:death_count)&.round(1))
	    else
        boss.update(average_death_counts: 1)
	    end
  	end
  end
end
