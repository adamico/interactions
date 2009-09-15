require 'test_helper'

class SpecialiteTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Specialite.new.valid?
  end
end
