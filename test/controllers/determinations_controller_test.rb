require 'test_helper'

class DeterminationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @determination = determinations(:one)
  end

  test "should get index" do
    get determinations_url
    assert_response :success
  end

  test "should get new" do
    get new_determination_url
    assert_response :success
  end

  test "should create determination" do
    assert_difference('Determination.count') do
      post determinations_url, params: { determination: {  } }
    end

    assert_redirected_to determination_url(Determination.last)
  end

  test "should show determination" do
    get determination_url(@determination)
    assert_response :success
  end

  test "should get edit" do
    get edit_determination_url(@determination)
    assert_response :success
  end

  test "should update determination" do
    patch determination_url(@determination), params: { determination: {  } }
    assert_redirected_to determination_url(@determination)
  end

  test "should destroy determination" do
    assert_difference('Determination.count', -1) do
      delete determination_url(@determination)
    end

    assert_redirected_to determinations_url
  end
end
