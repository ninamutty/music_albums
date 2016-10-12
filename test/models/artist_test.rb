require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "An Artist must have a name" do
    red_hot_chilli_peppers = Artist.new

    #what you want to test.the assertion "and then an error message that comes up if it fails"
    assert_not red_hot_chilli_peppers.valid? "An Artist without a name is invalid."
    assert_not red_hot_chilli_peppers.save

    red_hot_chilli_peppers.name = "Kanye"
    assert red_hot_chilli_peppers.valid?  "Somehow Kanye is not a valid name."
  end

  test "The amount of an artist's albums" do
    assert_equal artists(:bonjovi).albums.length, 2
    assert_equal artists(:redhotchillipeppers).albums.length, 1
    assert_equal artists(:beyonce).albums.length, 0
  end

  test "Bon Jovi has the correct albums" do
    assert_includes artists(:bonjovi).albums, albums(:slippery_when_wet)
    assert_includes artists(:bonjovi).albums, albums(:bounce)
  end

end
