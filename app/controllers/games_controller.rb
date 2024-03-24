class GamesController < ApplicationController
 ###  before_action :set_team

 ###def index
 ###  @games = @team.games
 ###end

 ###def new
 ###  @game = @team.games.build
 ###end

 ###def create
 ###  @game = @team.games.build(game_params)
 ###  if @game.save
 ###    redirect_to team_games_path(@team), notice: 'Game was successfully created.'
 ###  else
 ###    render :new
 ###  end
 ###end

 ###private

 ###def set_team
 ###  @team = Team.find(params[:team_id])
 ###end

 ###def game_params
 ###  params.require(:game).permit(:name, :date)
 ###end
end