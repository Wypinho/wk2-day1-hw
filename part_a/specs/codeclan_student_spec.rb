require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def test_get_student_name()
    student = Student.new("Andrew", "E36")
    assert_equal("Andrew", student.get_student_name())
  end

  def test_get_cohort()
    student = Student.new("Andrew", "E36")
    assert_equal("E36", student.get_cohort())
  end

  def test_set_student_name()
    student = Student.new("Andrew", "E36")
    student.set_student_name("Andy")
    assert_equal("Andy", student.get_student_name())
  end

  def test_set_cohort()
    student = Student.new("Andrew", "E36")
    student.set_cohort("E33")
    assert_equal("E33", student.get_cohort())
  end

  def test_talk()
    student = Student.new("Andrew", "E36")
    assert_equal("I can talk!", student.talk())
  end
end
