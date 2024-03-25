class GamesController < ApplicationController
    before_action :set_team
    before_action :set_player
    before_action :set_game, only: [:show, :edit, :update]
    
    def index
        @teams = @team.games
    end
  
    def show
        @game = Game.find(params[:id])
    end

    def new
        @game = @team.games.build
    end
    
    def create
        @game = @team.games.build(game_params)
        if @game.save
        redirect_to player_team_path(@player, @team), notice: "Game was successfully created."
        else
        render :new
        end
    end
    
    def edit
        @game = Game.find(params[:id])
    end
  
    def update
        @game = Game.find(params[:id])
        
        if @game.update(game_params)
            redirect_to player_team_path(@player, @team), notice: 'Game was successfully updated.'
        else
            render :edit
        end
    end

    private
    
    def set_team
        @team = Team.find(params[:team_id])
    end
    
    def set_game
        @game = @team.games.find(params[:id])
    end

    def set_player
        @player = @team.player  # Assuming Team model has a player association
      end
    
    def game_params
        params.require(:game).permit(:date, :opponent_team_name, :city, :is_victory, :is_home_team, :score, :opponent_score)
    end
end