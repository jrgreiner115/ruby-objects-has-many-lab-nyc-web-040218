require 'pry'
class Artist

  attr_accessor :name, :songs

@@song_count = 0
    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      @songs
    end

    def add_song(song)
      # binding.pry
      @@song_count += 1
      @songs << song
      song.artist = self
      # binding.pry
    end

     def add_song_by_name(name)
       @@song_count += 1
      new_song = Song.new(name)
      @songs << new_song
      new_song.artist = self
    end

    def self.song_count
      @@song_count
    end
end
