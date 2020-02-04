class Student

    attr_accessor :first_name
    attr_reader :test_name, :status

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(student_obj)
        Student.all.find {|stu| stu == student_obj}
    end

    def grade_percentage
        pass= 0.0
        total_tests = 0.0
        BoatingTest.all.select do |test|
            if test.student.first_name == self.first_name
                if test.status == 'passed'
                    pass += 1
                end
                total_tests += 1
            end            
        end
        pass / total_tests * 100
    end

end
