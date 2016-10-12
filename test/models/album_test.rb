require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Album must have a name & artist" do
    assert albums(:slippery_when_wet).valid?

    albums(:slippery_when_wet).name = nil  ## This name removal is local to the test data - it doesn't change the fixture
    assert_not albums(:slippery_when_wet).valid?
  end

  test "Slippery When Wet was by Bon Jovi" do
    assert_equal albums(:slippery_when_wet).artist, artists(:bonjovi)
  end

end
