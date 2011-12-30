require './encryption_engine'

puts "Welcome to the Encrypter/Decrypter"
puts "Do you want to encrypt or decrypt?"
command = gets.chomp

puts "What is your message?"
message = gets.chomp
puts ""

puts "What would you like the key to be?"
key = gets.chomp.to_i

engine = EncryptionEngine.new

if command == "encrypt file"
  puts "What is the input filename?"
  input_filename = gets.chomp
  output_filename = engine.encrypt_to_file(input_filename, key)
  output = "#{output_filename} created"
end

if command == "decrypt file"
  puts "What is the input filename?"
  input_filename = gets.chomp
  output_filename = engine.decrypt_from_file(input_filename, key)
  output = "#{output_filename} created"
end

if command == "encrypt"
  puts "Running the Encrypter!"    
  output = engine.encrypt(message, key)
end

if command == "decrypt"
  puts "Running the Decrypter!"
  output = engine.decrypt(message, key)  
end  

# show it to them
puts "Here are the results:"
puts output