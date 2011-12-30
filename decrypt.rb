puts "Welcome to the Decrypter"
puts "What is your encrypted message?"
message = gets.chomp
puts ""

puts "Decrypted Message:"
message.each_byte do |code|
  new_code = code - 2  
  new_letter = new_code.chr  
  print new_letter
end
puts ""