class Instructor

    attr_reader :name, :student, :test_name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def pass_student(driver, name_of_test)
        BoatingTest.all.find do |test|
            if test.student == driver && test == name_of_test
                test.status = "passed"
            end
        end
    end

    def fail_student(driver, name_of_test)
        BoatingTest.all.find do |test|
            if test.student == driver && test == name_of_test
                test.status = "failed"
            end
        end
    end

end
