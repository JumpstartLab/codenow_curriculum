class CryptoEngine
  def encrypt(message)
    results = []
    message.each_byte do |character_code|
      new_character = character_code + 1
      results << new_character.chr
    end
    results.join
  end
  
  def decrypt(message)
    results = []
    message.each_byte do |character_code|
      new_character = character_code - 1
      results << new_character.chr
    end
    results.join
  end
end

ce = CryptoEngine.new

puts "Encrypt or Decrypt?"
operation = gets.chomp
puts ""
if operation == "encrypt"
  puts "Enter the message to Encrypt:"
  input = gets.chomp  
  puts ""  
  puts "Here is your encrypted message:"
  puts ce.encrypt(input)
else
  puts "Enter the message to Decrypt:"
  input = gets.chomp
  puts ""
  puts "Here is your decrypted message:"
  puts ce.decrypt(input)
end

# (1..4).each do |i|
#   "z".each_byte{|let| puts (let + i).chr}
# end
  
