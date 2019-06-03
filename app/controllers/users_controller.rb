class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@death_counts = []
  	BossLog.where(user_id:@user.id).where(done:true).each do |boss_log|
      @death_counts << boss_log.death_count
  	end
  end
end
