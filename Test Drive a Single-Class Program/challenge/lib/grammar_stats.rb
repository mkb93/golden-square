class GrammarStats
    def initialize
    
    end
  
    def check(text) 
      fail 'please enter a string' unless text.is_a?(String)
      if (text[-1] == '?' || text[-1] == '!' || text[-1] == '.') && text[0].upcase == text[0]
        return true
      else
        return false
      end
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
