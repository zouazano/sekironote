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
    @boss_log.update(user_id: @user.id, boss_id:@boss.id)
    if @boss_log.save
      redirect_to edit_boss_boss_log_path(@boss, @boss_log.id)
    else
      redirect_to root_url
    end
  end

  def edit
    @boss_log = BossLog.find(params[:id])
  end

  def update
    @boss_log = BossLog.find(params[:id])
    if params[:commit] == "+"
      @boss_log.update(death_count: @boss_log.death_count+1, comment: boss_log_params[:comment], medicine_count: boss_log_params[:medicine_count], item: boss_log_params[:item])
      render :edit
    elsif params[:commit] == "-"
      @boss_log.update(death_count: @boss_log.death_count-1, comment: boss_log_params[:comment], medicine_count: boss_log_params[:medicine_count], item: boss_log_params[:item])
      render :edit
    elsif params[:commit] == "一時保存"
      @boss_log.update(comment: boss_log_params[:comment], medicine_count: boss_log_params[:medicine_count], item: boss_log_params[:item])
      flash.now[:note] = '一時保存されました  マイページから再開できます'
      render :edit
    else
      @boss_log.update(comment: boss_log_params[:comment], medicine_count: boss_log_params[:medicine_count], item: boss_log_params[:item], done:true)
      redirect_to boss_path(@boss_log.boss)
    end
  end

  def destroy
    @user = current_user
    @boss_log = BossLog.find(params[:id])
    @boss_log.destroy
    redirect_to user_path(@user)
  end

  private

  def boss_log_params
    params[:boss_log].permit(:death_count, :play_time, :comment, :difficulty, :lap, :medicine_count, :item)
  end
end
