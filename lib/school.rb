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
   
   def sort
      @roster = Hash[@roster.sort_by{
        |key, value|
         key
      }]
      @roster.each{ |key,value|
         value = value.sort!
      }
      @roster
   end
end