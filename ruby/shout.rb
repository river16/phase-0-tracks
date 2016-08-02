=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(nice_words)
    nice_words + "!!!" + " :)"
  end

end
=end

module Shout

  def yell_closing(words)
    puts "#{words}!!!!"
  end

  def yell_vendor(words)
    puts "GETCH YER HOT N FRESH #{words} HERE!!!"
  end

end

class Auctioneer
  include Shout
end

class Food_Vender
  include Shout
end


#-------DRIVER CODE--------
auct_call = Auctioneer.new
auct_call.yell_closing("Going once, Going twice, SOLD ")

vendor_call = Food_Vender.new
vendor_call.yell_vendor("HOTDOGS")






