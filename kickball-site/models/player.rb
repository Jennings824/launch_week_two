require_relative "./team_data"

class Player
attr_reader :name, :position, :team_name, :all_players
  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    @all_players = []
    TeamData::ROLL_CALL.each do|team, roster|
      roster.each do |position, player|
        @all_players << Player.new(player, position, team)
      end
    end
    @all_players
  end
end
