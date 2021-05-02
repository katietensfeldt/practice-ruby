# # Section 1

puts "What are your 5 favorite foods?"
answers = []
5.times do
  answers << gets.chomp
end

count = 1
answers.each do |answer|
  puts "#{count}. #{answer}"
  count += 1
end

# Section 2

count = 0
11.times do
  puts count
  count += 1
end

sams_recipes = ["pizza", "spagetti", "sushi", "soup", "", "1", "2", "3", "401", "2", "3"]
sallys_languages = ["english", "spanish", "german", "", "12", "2"]

if sams_recipes.include?("crepes") && sallys_languages.include?("french")
  puts "You should get married!"
elsif sams_recipes.length > 10 && sallys_languages.length > 5
  puts "You two should date!"
else
  puts "Stay away from each other!"
end

# Section 3

def banking
  people = []
  keys = ["first name", "last name", "email", "account number"]
  2.times do
    person = ""
    puts "Please enter your first name, last name, then email, seperated by spaces"
    person << gets.chomp
    person = person.split(" ")
    person << rand(10 ** 10)
    person = Hash[keys.zip(person)]
    people << person
  end
  people.each do |person|
    puts "FIRST NAME: #{person["first name"]}"
    puts "LAST NAME: #{person["last name"]}"
    puts "EMAIL: #{person["email"]}"
    puts "ACCT: #{person["account number"]}"
  end
  
end

banking

# Section 4

students = ["Hermione", "Seamus", "Lucius", "Cho", "Sirius", "Luna", "Severus", "Draco", "Harry", "Dumbeldore", "Ron"]

def classroom(array)
  split_array = array.each_slice(2).to_a

  outer_index = 0 
  while outer_index < split_array.length
    if split_array[outer_index] == split_array[-2]
      if split_array[outer_index + 1].length % 2 == 1
        split_array[outer_index] << split_array[outer_index + 1].pop
        puts "Group: #{split_array[outer_index][0]} #{split_array[outer_index][1]} #{split_array[outer_index][2]}"
        break
      end
    else
      puts "Group: #{split_array[outer_index][0]} #{split_array[outer_index][1]}"
    end
    outer_index += 1
  end
end

classroom(students)