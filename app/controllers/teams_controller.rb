class TeamsController < ApplicationController
    before_action :set_player
    ###before_action :set_team, only: [:show, :edit, :update, :destroy]

    def index
        @teams = @player.teams
    end
  
    def show
        @team = Team.find(params[:id])
    end
  
    def new
        @team = @player.teams.build
    end
  
    def create
       @team = @player.teams.build(team_params)
        if @team.save            
            redirect_to player_path(@player), notice: "Team was added successfully"
        else
            render :new
        end
    end
  
    def edit
        @team = Team.find(params[:id])
    end
  
    def update
        @team = Team.find(params[:id])
        
        if @team.update(team_params)
            redirect_to player_path(@player), notice: 'Team was successfully updated.'
        else
            render :edit
        end
    end
  ###
    ###def destroy
    ###    @team = Team.find(params[:id])
    ###    @team.destroy
    ###    redirect_to teams_url, notice: 'Team was successfully destroyed.'
    ###end
  
  
    private
   
    def set_player
        @player = Player.find(params[:player_id])
    end  

    def team_params
        params.require(:team).permit(:name, :year, :number)
    end

end