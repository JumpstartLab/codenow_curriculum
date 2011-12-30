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
end