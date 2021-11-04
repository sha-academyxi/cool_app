class MonstersController < ApplicationController

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
  end

  def create
    monster = Monster.create(monster_params)

    redirect_to monster_path(monster)
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :size, :taxonomy)
  end

end
