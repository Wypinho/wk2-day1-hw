require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def test_get_team_name()
    team = SportsTeam.new("Alva Utd", ["Lynsey", "Lewis", "Finlay"], "Andrew")
    assert_equal("Alva Utd", team.get_team_name())
  end

end
