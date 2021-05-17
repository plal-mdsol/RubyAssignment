class String
    def split_str(sp= " ",&b)
        array = Array.new
        str = " "
        if sp.empty?
            sp=""
        end
        self.each_char do |char|
            if char != sp
                str<<char
               
            else
                array<<str
                # yield str if block_given?
                str=""
            end
            # yield str if block_given?
        end
        if str == ""
            array 
        else
            array = array<<str  
        end
       
        array.each do |char|
            yield char if block_given?
        end

        return array
    end
end
p "Medidata".split_str
p "M e d i * d a t a".split_str("*") {|i| p i.upcase }
p "M e d i d a t a".split_str(" "){|i| p i.upcase }