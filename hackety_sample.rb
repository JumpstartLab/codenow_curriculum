require 'enc_engine'

Shoes.app :height => 200, :width => 500 do
  flow do 
    para "Enter the original message:"
    @original_text = edit_box
  end
  flow do
    para "Enter the key:"
    @key = edit_line
  end
  button "Encrypt" do
    EncEngine.new.hello
    encrypted = @original_text.text.upcase + @key.text
    @output.text = encrypted
  end
  flow do
    @output = para
  end
end