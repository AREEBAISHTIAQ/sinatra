require 'sinatra'
require 'sinatra/reloader'if development?

get '/' do
def caesar(string,shift)
    letter = string.downcase.split("").map do |str|
    
        small = str.ord + shift
          if str.ord <  97 && str.ord > 26
            str = str
           elsif str.ord+shift > 122
           str = str.ord+shift - 123 + 97
           str.chr
    else
      function = small.chr
     function
          end
      end
    return  letter.join.capitalize
    end
    string = params['string']
    shift = params['shift']
    caesar = caesar(string.to_s, shift.to_i)
    erb :index, :locals => {:string => string, :shift => shift, :caesar => caesar}
end 