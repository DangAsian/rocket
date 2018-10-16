require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @rocket = Rocket.new
  end

  def test_name_change
    @rocket.name = 'Daniel'
    new_name = @rocket.name

    expected_name = 'Daniel'

    assert_equal(expected_name, new_name)
  end

  def test_colour
    @rocket.colour = 'blue'
    new_colour = @rocket.colour

    expected_colour = 'blue'

    assert_equal(expected_colour, new_colour)
  end

  def test_flying_false
    actual_value = @rocket.flying?
    expected_value = false

    assert_equal(expected_value, actual_value)
  end

  def test_lift_off_flying_return_false_if_flying
    @rocket.flying = true
    actual_value = @rocket.flying?

    expected_value = true

    assert_equal(expected_value, actual_value)
  end

  def test_lift_off_flying_return_true_if_not_flying
    actual_value = @rocket.flying?

    expected_value = false
    assert_equal(expected_value, actual_value)
  end

  def test_landing_return_flying_false_if_flying_true
    @rocket.flying = true
    actual_value = @rocket.land
    expected_value = true

    assert_equal(expected_value, actual_value)
  end

  def test_land_return_false_if_flying_is_false
    actual_value = @rocket.land
    expected_value = false

    assert_equal(expected_value, actual_value)
  end

  def test_status_flying_true_return_string_of_state_flying
    @rocket.flying = true
    actual_value = @rocket.status

    expected_value = "Rocket #{@rocket.name} is flying through the sky!"

    assert_equal(expected_value, actual_value)
  end

  def test_status_flying_false_return_string_of_state_lift_off
    actual_value = @rocket.status

    expected_value = "Rocket #{@rocket.name} is ready for lift off!"

    assert_equal(expected_value, actual_value)
  end

  # def test_name_random_name
  #   actual_value = @rocket.name
  #
  #   expected_value = true
  #   assert_equal(expected_value, actual_value)
  # end

end
