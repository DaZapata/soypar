require "sinatra"

get '/' do
  def pares
    @text =""
    (1..50).each do |i|
      if i % 2 == 0
        @num = "#{i} Soy Par!"
      else
        @num = "#{i} Soy Impar!"
      end
      @text = "<h1>#{@text}#{@num}<h1>"

    end
    @text
  end
   erb :index
end
