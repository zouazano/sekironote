class BossesController < ApplicationController
  def index
    @q = Boss.ransack(params[:q])
    @bosses = @q.result(distinct: true)
  end

  def show
  	@boss = Boss.find(params[:id])
    @death_counts = []
    BossLog.where(boss_id:@boss.id).where(done:true).each do |boss_log|
      @death_counts << boss_log.death_count
    end
  end

  private
  def search_params
    params.require(:q).permit(:name_cont)
  end
  
end
