participant = ['John Doe', '20', 'Male']

hash = {}
sp = participant[0].split
hash[:first_name] = sp[0]
hash[:last_name] = sp[1]
hash[:age] = participant[1].to_i
hash[:gender] = participant[2]

# p hash 

puts "Dear Mr/Ms #{participant[0]},\n
Thanks for your participation in this clinical trial. Below are your captured details,\n
First Name: #{hash[:first_name]}\n
Last Name: #{hash[:last_name]}\n
Age: #{hash[:age]}\n
Gender: #{hash[:gender]}"