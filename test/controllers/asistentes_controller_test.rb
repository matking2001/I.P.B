require 'test_helper'

class AsistentesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get asistentes_index_url
    assert_response :success
  end

  test "should get new" do
    get asistentes_new_url
    assert_response :success
  end

  test "should get show" do
    get asistentes_show_url
    assert_response :success
  end

  test "should get edit" do
    get asistentes_edit_url
    assert_response :success
  end

end
