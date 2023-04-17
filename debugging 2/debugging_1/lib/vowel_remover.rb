class VowelRemover
  def initialize(text)
    @text = text
    @vowels = ["a", "e", "i", "o", "u"]
  end

  def remove_vowels()
    i = 0
    while i < @text.length()
      binding.irb
      if @vowels.include? @text[i].downcase
        
        @text = @text.slice(0,i) + @text.slice(i+1..-1)
        text_1 = @text.slice(0,i)
        text_2 = @text.slice(i+1..-1)
        
      end
      
      i += 1
    end
    return @text
  end
end

a = VowelRemover.new("aeiouo")
a.remove_vowels