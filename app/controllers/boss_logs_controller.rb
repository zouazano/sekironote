class BossLogsController < ApplicationController
  def new
    @user = current_user
    @boss = Boss.find(params[:boss_id])
    @boss_log = @boss.boss_logs.build
  end

  def create
    @user = current_user
    @boss = Boss.find(params[:boss_id])
    @boss_log = @boss.boss_logs.build(boss_log_params)
    if BossLog.where(user_id: @user.id, boss_id:@boss.id).create(boss_log_params)
      redirect_to boss_path(@boss)
    else
      redirect_to root_url
    end
  end

  private

  def boss_log_params
    params[:boss_log].permit(:death_count, :play_time, :comment, :difficulty, :lap)
  end
end
