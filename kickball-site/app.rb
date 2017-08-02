require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"

end

get "/teams" do
  @team_data = Team.all
  # @team_roster = Team.players
  # @team_data = TeamData::ROLL_CALL
erb :teams
end

get "/teams/:individual_team" do
  @team_data = TeamData::ROLL_CALL
  @individual_team = params[:individual_team]
  @team = Team.new(:"#{@individual_team}")
  @roster = @team.players

  erb :show
end
