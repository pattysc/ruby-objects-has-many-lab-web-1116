class Artist

  def initialize(name)
    @name = name
    @songs = []
  end

  @@song_count = 0

  attr_accessor :artist, :song
  attr_reader :name, :songs

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song_inst = Artist.new(song_name)
    @songs << song_inst
    song_inst.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end



# adele.add_song_by_name("Rolling in the Deep")
# expect(adele.songs.last.name).to eq("Rolling in the Deep")
# expect(adele.songs.last.artist).to eq(adele)
