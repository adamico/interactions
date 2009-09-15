require 'test_helper'

class PrincipeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Principe.new.valid?
  end
end
