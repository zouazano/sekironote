class BossesController < ApplicationController
  def index
  end

  def show
  	@boss = Boss.find(params[:id])
  end
end
