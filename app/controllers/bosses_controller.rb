class BossesController < ApplicationController
  def index
    @q = Boss.ransack(params[:q])
    @bosses = @q.result(distinct: true)
  end

  def show
  	@boss = Boss.find(params[:id])
  end

  private
  def search_params
    params.require(:q).permit(:name_cont)
  end
  
end
