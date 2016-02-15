class Polynomials

  def initialize(array) 
    @array  = array
    @length = @array.length()-1
    @result = ""
  end 

  def compute

    raise ArgumentError, "Need atleast 2 coefficients" if @length < 1

    @array.each  do |coeff|

      if coeff != '0'
        
        if coeff > '0' 
          if @length != @array.length() - 1
            @result += '+'
          end
          @result += coeff if coeff != '1' || @length == 0    
        else
          coeff != '-1' || @length == 0 ? @result += coeff : @result += '-'
        end 

        if @length >= 2
          @result += "x^#{@length}"
        elsif @length == 1
          @result += 'x'
        end
      end

      @length = @length - 1

    end
  
    return @result            
  
  end

end
