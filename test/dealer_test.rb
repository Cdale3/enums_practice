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
end
