include db

#authentication method, to check if password & username match
def auth_user(username, password, user_db)
    user_db.each do |user_detail|
        if user_detail[:username] == username && user_detail[:password] == password
            return user_detail
        end
    end
    "Wrong credentials"
end

puts " welcome to AUTHENTICATOR"
30.times {print "-"}
puts 
puts "On entering correct password, user details will be returned"
attempts = 1
while attempts <= 3
    print "Username:"
    username = gets.chomp
    print "Password:"
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts " Press z to exit or any key to continue"
    input = gets.chomp
    break if input == "z"
    attempts +=1
    puts " Number of attemots left #{attempts}"
end
puts " Number of attempts are over" if attempts == 4  
