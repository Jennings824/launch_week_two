require_relative "./team_data"
require_relative "./player"

require 'pry'

class Team
attr_reader :name, :team_players, :all_players
  def initialize(name)
    @name = name
  end

  def self.all
    @all_teams = []
    TeamData::ROLL_CALL.each do|team, roster|
        @all_teams << Team.new(team)
    end
    @all_teams
  end

  def players
    @team_players = []
    @all_players = Player.all
    @all_players.each do |player|
      if player.team_name == @name.to_sym
        @team_players << player
      end
    end
    @team_players
  end
end

team = Team.new("Jetson Jets")
puts team.players.inspect
