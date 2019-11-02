require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  extend Findable::ClassMethods
  def self.all
    @@artists
  end
  extend Memorable::ClassMethods


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  include Paramable::InstanceMethods
  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end
end
