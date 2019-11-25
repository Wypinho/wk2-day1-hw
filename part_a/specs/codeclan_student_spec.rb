require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def test_get_student_name()
    student = Student.new("Andrew", "E36")
    assert_equal("Andrew", student.get_student_name())
  end

end
