class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_student_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talk()
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end

end
