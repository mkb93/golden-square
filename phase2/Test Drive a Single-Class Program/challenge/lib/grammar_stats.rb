class GrammarStats
    def initialize
    
     @check_counter = 0
     @success_counter = 0
    end
  
    def check(text) 
      fail 'please enter a string' unless text.is_a?(String)
      if (text[-1] == '?' || text[-1] == '!' || text[-1] == '.') && text[0].upcase == text[0]
        @check_counter += 1
        @success_counter += 1
        return true
      else
        @check_counter += 1
        return false
      end
    end
  
    def percentage_good
        return 100 if @check_counter == 0
        (@success_counter * 100)/@check_counter
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
