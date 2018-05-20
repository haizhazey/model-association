require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notes_index_url
    assert_response :success
  end

  test "should get create" do
    get notes_create_url
    assert_response :success
  end

  test "should get all" do
    get notes_all_url
    assert_response :success
  end

  test "should get one" do
    get notes_one_url
    assert_response :success
  end

end
