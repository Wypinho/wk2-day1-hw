require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def test_get_team_name()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    assert_equal("Alva Utd", team.team_name())
  end

  def test_get_team_players()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    assert_equal(["Lynsey", "Lewis", "Finlay"], team.players())
  end

  def test_get_team_coach()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    assert_equal("Andrew", team.coach_name())
  end

  def test_set_coach_name()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    team.coach_name = "Andy"
    assert_equal("Andy", team.coach_name())
  end

  def test_add_player()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    team.add_player("Andrew")
    assert_equal(["Lynsey", "Lewis", "Finlay", "Andrew"], team.players())
  end

  def test_find_player()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    assert_equal(true, team.find_player("Lewis"))
  end

  def test_won_or_lost()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    team.won_or_lost("Won")
    assert_equal(3, team.points())
  end

end
