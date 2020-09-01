require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_exists
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_instance_of Character, character
  end

  def test_character_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1000000, kitt.salary
  end

end
