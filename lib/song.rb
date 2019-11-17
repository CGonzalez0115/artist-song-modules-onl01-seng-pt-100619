require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

<<<<<<< HEAD
=======
  #def self.reset_all
    #self.all.clear
  #end

  #def self.count
    #self.all.count
  #end

>>>>>>> fc7e532417bb82564677a817e3066180afa37d3b
  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
