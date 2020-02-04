require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)


# puts no_crashing.status

# puts no_crashing.status

# puts BoatingTest.all

#puts Student.find_student(spongebob)
puts no_crashing.status
puts puff.pass_student(spongebob, no_crashing)
puts no_crashing.status

puts  "spongebob first grade #{spongebob.grade_percentage}"

puts puff.fail_student(spongebob, no_crashing)

puts "Now spongebob has failed, and has a #{spongebob.grade_percentage}% in the class."





#binding.pry
0 #leave this here to ensure binding.pry isn't the last line

