# player: name (string), health (integer).
#
name1 = 'larry'
health1 = 60
name2 = 'curly'
health2 = 125
name3 = 'moe'
health3= 100

#puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

health2 = health1
puts "#{name2.upcase} has a health of #{health2}."

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

title = "#{name3.capitalize} has a health of #{health3}."
puts title.center(50, "*")
