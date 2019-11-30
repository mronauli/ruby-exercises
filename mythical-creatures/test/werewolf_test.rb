gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/werewolf'
require 'pry'



class WerewolfTest < Minitest::Test
  def test_it_has_a_name
    skip
    werewolf = Werewolf.new("David", "London")
    assert_equal "David", werewolf.name
  end

  def test_it_has_a_location
    skip
    werewolf = Werewolf.new("David", "London")
    assert_equal "London", werewolf.location
  end

  def test_it_is_by_default_in_human_form
    skip
    werewolf = Werewolf.new("David", "London")
    assert werewolf.human?
  end

  def test_when_starting_as_a_human_changing_means_it_is_no_longer_human
    skip
    werewolf = Werewolf.new("David", "London")
    werewolf.change!
    refute werewolf.human?
  end

  def test_when_starting_as_a_human_changing_turns_it_into_a_werewolf
    skip
    werewolf = Werewolf.new("David", "London")
    werewolf.change!
    assert werewolf.wolf?
  end

  def test_when_starting_as_a_human_changing_a_second_time_it_becomes_human_again
    skip
    werewolf = Werewolf.new("David", "London")
    assert werewolf.human?
    werewolf.change!
    werewolf.change!
    assert werewolf.human?

  end

  def test_when_starting_as_a_werewolf_changing_a_second_time_it_becomes_werewolf_again
    skip
    werewolf = Werewolf.new("David", "London")
    werewolf.change!
    assert werewolf.wolf?
    werewolf.change!
    werewolf.change!
    assert werewolf.wolf?
  end

  def test_is_not_hungry_by_default
    skip
    werewolf = Werewolf.new("David", "London")
    refute werewolf.hungry?
  end

  def test_becomes_hungry_after_changing_to_a_werewolf
    skip
    werewolf = Werewolf.new("David", "London")
    werewolf.change!
    assert werewolf.hungry?
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end

    def consumed?
      @status == :dead
      # evaluates to true or false
    end
  end

  def test_consumes_a_victim
    werewolf = Werewolf.new("David", "London")
    victim = Victim.new
    werewolf.change!
    werewolf.consume(victim)
    binding.pry
    assert victim.consumed?

  end

  def test_cannot_consume_victim_if_in_human_form
    werewolf = Werewolf.new("David", "London")
    victim = Victim.new
    assert werewolf.human?
    refute victim.consumed?
  end

  def test_a_werewolf_who_has_consumed_a_victim_is_no_longer_hungry
    werewolf = Werewolf.new("David", "London")
    victim = Victim.new
    werewolf.change!
    werewolf.consume(victim)
    assert victim.consumed?
    refute werewolf.hungry?
  end

  def test_a_werewolf_who_has_consumed_a_victim_makes_the_victim_dead
    skip
    werewolf = Werewolf.new("David", "London")
    victim = Victim.new
    werewolf.change!
    werewolf.consume(victim)
    binding.pry
    assert victim.consumed?
  end

end
