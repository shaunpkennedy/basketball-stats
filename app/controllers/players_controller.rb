class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
      @players = Player.all
  end

  def show
  end

  def new
      @player = Player.new
  end

  def create
     @player = Player.new(player_params)
      if @player.save            
          redirect_to players_path, notice: "Player was added successfully"
      else
          render :new
      end
  end

  def edit
    @team = Team.find(params[:id])
    @player = @team.player
  end

  def update
      if @player.update(player_params)
          redirect_to players_path, notice: "Player was updated successfully"
      else
          render :edit
      end
  end

  def destroy
      @player.destroy
      redirect_to players_path, notice: "Player was deleted"
  end


  private

  def player_params
      params.require(:player).permit(:name)
  end

  def set_player
      @player = Player.find(params[:id])
  end  

end 