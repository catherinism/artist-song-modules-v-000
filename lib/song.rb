require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
      self.class.all << self
      @songs = []
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
