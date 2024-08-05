require "test_helper"

class ClassRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_room = class_rooms(:one)
  end

  test "should get index" do
    get class_rooms_url, as: :json
    assert_response :success
  end

  test "should create class_room" do
    assert_difference("ClassRoom.count") do
      post class_rooms_url, params: { class_room: { floor: @class_room.floor, room_num: @class_room.room_num } }, as: :json
    end

    assert_response :created
  end

  test "should show class_room" do
    get class_room_url(@class_room), as: :json
    assert_response :success
  end

  test "should update class_room" do
    patch class_room_url(@class_room), params: { class_room: { floor: @class_room.floor, room_num: @class_room.room_num } }, as: :json
    assert_response :success
  end

  test "should destroy class_room" do
    assert_difference("ClassRoom.count", -1) do
      delete class_room_url(@class_room), as: :json
    end

    assert_response :no_content
  end
end
