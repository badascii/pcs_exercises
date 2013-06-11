class Beer

  def self.song(verses=99)
    this_song = ""
    count = verses
    while count > 0
      new_count = count -1
      one_verse = %Q(#{count} bottles of beer on the wall. #{count} bottles of beer. You take one down, pass it around, #{new_count} bottles of beer on the wall. \n\n)
      this_song << one_verse
      count = new_count
    end
    puts this_song
  end
end

class Fixnum

 def bottles_of_beer
  Beer.song(self)
 end
end


45.bottles_of_beer