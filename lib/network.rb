class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    # require "pry"; binding.pry
    @shows << show
  end

  def main_characters
    all_characters = []
    @shows.each do |show|
      all_characters << show.characters
    end
    main_char = all_characters.flatten.find do |character|
      character.name == character.name.upcase
    end
    main_char.name
  end


end
