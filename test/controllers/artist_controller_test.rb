require 'test_helper'

class ArtistControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index  ## This jsut says use the index view for that template
  end

  test "should get show" do
    get :show, {id: artists(:bonjovi).id}
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "should get edit" do
    get :edit, {id: artists(:bonjovi).id }
    assert_response :success
  end

  test "should be able to create an artist" do
    post_params = {artist: {name: "Regina Spektor"}}
    post :create, post_params
    assert_response :redirect
  end

  test "creating an artist changes the number of artists" do
    assert_difference("Artist.count", 1) do
      post_params = {artist: {name: "Regina Spektor"}}
      post :create, post_params
    end
  end

  test "should be able to update an artist" do
    patch :update, {id: artists(:bonjovi).id }
    assert_response :success
  end

  test "should be able to delete an artist" do
    delete :destroy, {id: artists(:bonjovi).id }
    assert_response :redirect
  end

  test "deleting an artists changes the number of artists" do
    assert_difference("Artist.count", -1) do
      delete :destroy, {id: artists(:redhotchillipeppers).id }
    end
  end

  # test "should get to the right template" do
  #
  # end

end
