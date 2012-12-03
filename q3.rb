class String
    def self.consonants_from(string)
        cons = []
        string.scan(/[BCDFGHJKLMNPRSTVWXZbcdfghjklmnprstvwxz]/){ |m| cons << m }
        cons.uniq.join
    end
end
 
String.consonants_from("Crazy fox jumps over a lazy dog")    #=> "Crzbwnfxjmpsvldg"

