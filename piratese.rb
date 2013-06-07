class String

  def to_pirate
    phrase = self.split
    phrase.each do |word|
      if word =~ /Are/i
        word = "Yarr"
      end
    end
    phrase.join(" ")
  end
end

class PirateString < String

  def initialize(string)
    self.to_pirate
    # phrase = self.split
    # phrase.each do |word|
    #   if word =~ /Are/i
    #     word = "Yarr"
    #   end
    # end
    # phrase.join(" ")
  end
end

def profile (block_description, &block)
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile 'monkeypatch test' do
  "Are you here?".to_pirate
end

profile 'instance test' do
  PirateString.new("Are you here?")
end
