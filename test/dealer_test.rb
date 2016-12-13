require 'minitest/autorun'
require 'minitest/pride'
require './lib/dealer'
require './lib/car'

class DealerTest < Minitest::Test
  def test_dealer_class_exists
    dealer = Dealer.new
    assert_equal Dealer, dealer.class
  end

  def test_dealer_has_empty_inventory_to_begin
    dealer = Dealer.new
    assert_equal [], dealer.inventory
  end

  def test_dealer_can_add_cars_to_inventory
    dealer = Dealer.new

    navy_bean = Car.new(2010, "Nissan")
    red_panther = Car.new(1983, "Jaguar")

    dealer.add_inventory(navy_bean)
    dealer.add_inventory(red_panther)

    assert_equal 2, dealer.inventory.count
  end

  def test_dealer_can_see_all_the_makes_available
    dealer = Dealer.new

    navy_bean = Car.new(2010, "Nissan")
    red_panther = Car.new(1983, "Jaguar")
    green_dragon = Car.new(1999, "Honda")

    dealer.add_inventory(navy_bean)
    dealer.add_inventory(red_panther)
    dealer.add_inventory(green_dragon)

    assert_equal ["Nissan", "Jaguar", "Honda"], dealer.all_makes
  end

  def test_dealer_can_get_oldest_car
    skip
    dealer = Dealer.new

    navy_bean = Car.new(2010, "Nissan")
    red_panther = Car.new(1983, "Jaguar")
    green_dragon = Car.new(1999, "Honda")

    dealer.add_inventory(navy_bean)
    dealer.add_inventory(red_panther)
    dealer.add_inventory(green_dragon)


    assert_equal "Jaguar", dealer.oldest_car.make
  end

  def test_dealer_can_get_youngest_car
    skip
    dealer = Dealer.new

    navy_bean = Car.new(2010, "Nissan")
    red_panther = Car.new(1983, "Jaguar")
    green_dragon = Car.new(1999, "Honda")

    dealer.add_inventory(navy_bean)
    dealer.add_inventory(red_panther)
    dealer.add_inventory(green_dragon)


    assert_equal "Nissan", dealer.oldest_car.make
  end

  def test_dealer_can_sort_cars_by_year
    skip
    dealer = Dealer.new

    navy_bean = Car.new(2010, "Nissan")
    red_panther = Car.new(1983, "Jaguar")
    green_dragon = Car.new(1999, "Honda")

    dealer.add_inventory(navy_bean)
    dealer.add_inventory(red_panther)
    dealer.add_inventory(green_dragon)


    assert_equal "Jaguar", dealer.sorted_by_year.first.make
  end

end
