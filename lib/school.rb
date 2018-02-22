require 'pry'
# code here!

class School
   def initialize(name)
    @name = name
    @roster = {}
   end
   
   def add_student(student, grade)
     # first, make the array 
     if !@roster[grade]
        @roster[grade] = []     
     end
      @roster[grade].push(student)
     # then, add the student
     
   end
   
   def grade(grade)
       @roster[grade]
   end
   
   def roster
       @roster
   end
end