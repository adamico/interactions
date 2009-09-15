require 'test_helper'

class ClasseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Classe.new.valid?
  end
end
