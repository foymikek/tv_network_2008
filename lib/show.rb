class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    tot_salary = 0
    characters.each do |character|
      tot_salary += character.salary
    end
    tot_salary
  end
  def highest_paid_actor
    top_paid_actor = characters.sort do |character|
      character.salary
    end
    top_paid_actor[-1].actor
  end

  def actors
    knight_rider_actors = characters.map do |character|
      character.actor
    end
    knight_rider_actors
  end

end
