require_relative('../models/student.rb')
require('pry')

student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house' => 'Gryffindor', 'age' => 11})
student2 = Student.new({'first_name' => 'Draco', 'last_name' => 'Malfoy', 'house' => 'Slytherin', 'age' => 11})
student1.save
student2.save

house1 = House.new({'name' => "Gryffindor",
                    'logo_url' => "http://vignette3.wikia.nocookie.net/harrypotter/images/9/96/Gryffindor_crest_by_tuliipiie-d491bqc.jpg/revision/latest?cb=20130508231701"})
house2 = House.new({'name' => "Slytherin",
                    'logo_url' => "https://upload.wikimedia.org/wikipedia/commons/3/34/Slytherin.png"})
house3 = House.new({'name' => "Hufflepuff",
                    'logo_url' => "https://upload.wikimedia.org/wikipedia/commons/c/c4/Coat_of_arms_Hufflepuff.svg"})
house4 = House.new({'name' => "Ravenclaw",
                    'logo_url' => "https://upload.wikimedia.org/wikipedia/commons/9/9f/Blason_Serdaigle.svg"})
house1.save
house2.save
house3.save
house4.save


binding.pry
nil