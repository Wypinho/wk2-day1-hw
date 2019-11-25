class SportsTeam

  attr_reader :team_name, :players, :points
  attr_accessor :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_team_players()
  #   return @players
  # end
  #
  # def get_team_coach()
  #   return @coach_name
  # end

  # def set_coach_name(name)
  #   @coach_name = name
  # end

  def add_player(name)
    @players << name
  end

  def find_player(name)
    for player in @players
      if player == name
        return true
      end
    end
    return false
  end

  def won_or_lost(result)
    if result == "Won"
      @points += 3
    end
  end

end
