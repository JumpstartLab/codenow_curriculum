class EncryptionEngine
  def encrypt(message, key)
    output = []
    message.each_byte do |code|
      new_code = code + key
      new_letter = new_code.chr  
      output << new_letter
    end
    return output.join
  end
  
  def decrypt(message, key)
    encrypt(message, -key)
  end
  
  def encrypt_to_file(input_filename, key)
    message = File.read(input_filename)
    encrypted = encrypt(message, key)
    output_filename = input_filename + ".encrypted"
    output = File.open(output_filename, "w")
    output << encrypted
    output.close
    return output_filename
  end
  
  def decrypt_from_file(input_filename, key)
    encrypted = File.read(input_filename)
    output_filename = input_filename + ".decrypted"
    output = File.open(output_filename, "w")
    output << decrypt(encrypted, key)
    output.close
    return output_filename
  end
end