require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "An Artist must have a name" do
    red_hot_chilli_peppers = Artist.new

    assert_not red_hot_chilli_peppers.valid? "An Artist without a name is invalid."
  end


end
